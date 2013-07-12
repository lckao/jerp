<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.jerp.DiskUtils" %>
<%@ page import="com.jerp.TimeUtil" %>
<%
	String username = app.get("username").trim();
	String password = app.get("password").trim();
	
	String id = null;
	Rs rs = null;
	
	boolean check = false; //验证有效性
	String yan = ""; //验证信息

	password = Sec.MD5Encrypt(password, 32);

	String filterCheck = "username = '" + username
			+ "' and password = '" + password + "'";
	Args argsCheck = new Args("vip", filterCheck);
	Ls lsCheck = dao.ls(argsCheck);

	if (lsCheck.getRowCount() > 0) {
		Rs item = lsCheck.getItems()[0];
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sn = DiskUtils.getSerialNumber("C"); //获取硬盘编号
		//验证硬盘编号和有效时间
		if(!item.get("disk").equals("") && item.get("disk") != null && item.get("disk").equals(sn) && !item.get("enddate").equals("") && item.get("enddate") != null && !TimeUtil.getTimer().after(format.parse(item.get("enddate")))){
			Cookie cookies[] = request.getCookies(); //读出用户硬盘上的Cookie，并将所有的Cookie放到一个cookie对象数组里面
			Cookie sCookie = null;
			boolean lee = false;
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) { //用一个循环语句遍历刚才建立的Cookie对象数组
					sCookie = cookies[i]; //取出数组中的一个Cookie对象
					if (sCookie != null) {
						if ((username).equals(sCookie.getName())) {
							lee = true;
							break;
						}
					}
				}
			}

			if (lee) {
				//验证客户端cookie
				rs = dao.rs(new Args("cookie", "username='" + username
						+ "'"));
				id = rs.get("id");
				if (sCookie.getValue().equals(id)) {
					check = true;
				}
			} else {
				//添加客户端cookie
				id = Rs.newId();
				rs = dao.rs(new Args("cookie", "username='" + username
						+ "'"));
				if (rs.isNull()) {
					rs = new Rs("cookie");
					rs.set("id", id);
					rs.set("username", username);
					dao.save(rs);
					Cookie cookie = new Cookie(username, id);
					cookie.setMaxAge(60*60*24*365);
					response.addCookie(cookie);
					check = true;
				} else {
					check = false;
				}
			}
		} else {
			yan = "***硬盘编号*** : " + sn + ", ***有效时间*** : " + item.get("enddate");
		} 
	}
%>
<%
	if(check){
%>
	<script type="text/javascript">
		JSer.cookie("<%=username%>", "<%=id%>", 60*24*365);
	</script>
<%
	}
%>