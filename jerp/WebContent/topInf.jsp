<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="net.jdiy.core.*" %>
<%
String filter = "tid = 'y0hftd4qb0' ORDER BY sort";
Args args = new Args("info", filter);
Ls ls = dao.ls(args);
%>
<div style="float: left; width: 10px; height: 100px;"></div>
<div id="demo"
	style="float: left; overflow: hidden; width: 780px; color: #ffffff;">
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td id="demo1" valign="top" >
				<table cellpadding="2" cellspacing="0" border="0">
					<tr height="10px">
						<td></td>
					</tr>
					<tr >
						<%
							for (Rs item : ls.getItems()) {
							String image = null;
							if (item.getFs("pic") != null) {
								image = "" + item.getFs("pic")[0]; 
							} else {
								image = "img/1.jpg";		//默认图片
							}
						%>
						<td>
							<table width="390px" cellpadding="0" cellspacing="0" border="0">
								<tr > 
									<td width="115px"><img src="<%=image %>" width="100px" height="100px"></td>
									<td valign="top">
											<font color="black"align="left"><%=item.get("t0") %></font>
											<font color="black"><%=item.get("t15") %></font>
									</td>
								</tr>
							</table>
						</td>
						<%
							}
						%>
					</tr>
				</table>
			</td>
			<td id="demo2" valign="top"></td>
		</tr>
	</table>
</div>
<script type="text/javascript">
	//头部滚动
	var speed = 30;// 速度数值越大速度越慢
	demo2.innerHTML = demo1.innerHTML;
	function Marquee() {
		if (demo2.offsetWidth - demo.scrollLeft <= 0)
			demo.scrollLeft -= demo1.offsetWidth;
		else {
			demo.scrollLeft++;
		}
	}
	var MyMar = setInterval(Marquee, speed);
	demo.onmouseover = function() {
		clearInterval(MyMar);
	}
	demo.onmouseout = function() {
		MyMar = setInterval(Marquee, speed);
	}
</script>
