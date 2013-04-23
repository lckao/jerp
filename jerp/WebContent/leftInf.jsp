<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    //Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
    App app = App.get();
    //下面获取数据库操作DAO
    Dao dao = app.getDao();

    String filter = "tid = 'y0h4mbdtro' ORDER BY sort";
    Args args = new Args("info", filter);
    Ls ls = dao.ls(args);
%>
<%
	int count = 6;//每页显示个数
	int rows = 1;	//当前行
	int jls = ls.getRowCount(); //总记录数
	Rs rslee[] = ls.getItems();
	StringBuffer sb0 = new StringBuffer();
	StringBuffer sb1 = new StringBuffer();
	sb1.append("<li>");
	for (int i = 1; i <= jls; i++) {
		String image = null;
		if (rslee[i - 1].getFs("pic") != null) {
			image = "background-image:url('" + rslee[i - 1].getFs("pic")[0] + "');";
		} else {
			image = "background-image:url('img/BG1.png');";		//默认图片
		}
	     if (i % count == 0) {
	    	 sb1.append("<div style=\"width: 300px;height: 5px;background-image:url('img/W.png');\"></div>");	 
	    	 sb1.append("<div id=" + rslee[i - 1].get("id") + "  onclick='window.parent.leftFunction(this);' style=\"width: 300px;height: 155px;" + image + "\"></div>");	 
	         sb1.append("</li>");
	         sb0.append(sb1);
	         sb1 = new StringBuffer();
	         sb1.append("<li>");
	         rows=1;
	     } else {
	    	 sb1.append("<div style=\"width: 300px;height: 5px;background-image:url('img/W.png');\"></div>");	 
	    	 sb1.append("<div id=" + rslee[i - 1].get("id") + "  onclick='window.parent.leftFunction(this);' style=\"width: 300px;height: 155px;" + image + "\"></div>");	 
	    	 rows++;
	     }
	 }
	//补全信息
	if(rows != 1){
		 for (int j = 0; j < (count - rows + 1); j++) {
			 sb1.append("<div style=\"width: 300px;height: 5px;background-image:url('img/W.png');\"></div>");	 
	    	 sb1.append("<div style=\"width: 300px;height: 155px;background-image:url('img/BG1.png');\"></div>");	 
	    }
		 sb1.append("</li>");
		 sb0.append(sb1);
		 rows=1;
	}
%>
<ul class="promptu-menu">
<%=sb0.toString()%>
</ul>