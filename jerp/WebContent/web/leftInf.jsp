<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    //Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
    App app = App.get();
    //下面获取数据库操作DAO
    Dao dao = app.getDao();

    String filter = "tid = 'y0h4mbdtro' ORDER BY sort";
    Args args = new Args("info", filter, 6, app.getInt("page", 1));
    Ls ls = dao.ls(args);
    //分页
    StringBuffer sb = new StringBuffer("");
    if (ls.getRowCount() != 0) {
        if (ls.getAbsPage() > 1) {
            sb.append("<a href=\"javascript:parent.__refreshLeft(1);\" style=\"margin-right:5px;\">首页</a>");
            sb.append("<a href=\"javascript:parent.__refreshLeft(" + (ls.getAbsPage() - 1) + ");\" style=\"margin-right:5px;\">上一页</a>");
        } else {
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">首页</a>");
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">上一页</a>");
        }
        
        if (ls.getAbsPage() < ls.getPageCount()) {
            sb.append("<a href=\"javascript:parent.__refreshLeft(" + (ls.getAbsPage() + 1) + ");\" style=\"margin-right:5px;\">下一页</a>");
            sb.append("<a href=\"javascript:parent.__refreshLeft(" + ls.getPageCount() + ");\" style=\"margin-right:5px;\">尾页</a>");
        } else {
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">下一页</a>");
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">尾页</a>");
        }
    }
%>
<table width="300px" height="100%" border="0" cellpadding="0" cellspacing="0">
	<%
		for (Rs item : ls.getItems()) {
	%>
	<tr id="<%=item.get("id")%>" height="160px" onclick="parent.leftFunction(this);">
		<td class="border10">
			<%
				if (item.getFs("pic") != null) {
			%> 
				<img class="photo" src="../<%=item.getFs("pic")[0]%>" /> 
			<%
			 	} else {
			%>
				<img class="photo" src="img/BG1.png" /><!-- 默认图片 -->
			<%
			 	}
			%>
		</td>
	</tr>
	<%
		}
	%>
</table>
<%-- <%=sb.toString()%> --%>