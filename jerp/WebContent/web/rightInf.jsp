<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    //Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
    App app = App.get();
    //下面获取数据库操作DAO
    Dao dao = app.getDao();

    String id = app.get("id");
    if(id == ""){
    	String filter = "tid = 'y0h4mbdtro' ORDER BY sort";
        Args args = new Args("info", filter);
        Ls ls = dao.ls(args);
        if(ls.getItems().length > 0){
        	id = ls.getItems()[0].get("id");
        }
    }
    
    Rs rsLeft = dao.rs(new Args("info", "id='" + id + "'"));
    
    String imageRight = null;
    if (rsLeft.getFs("pico") == null) {
    	imageRight = "background-image: url(img/BG1.png)";	//默认图片
    } else {
    	imageRight = "background-image: url(../" + rsLeft.getFs("pico")[0] + ")";
    }
    
    String filter = "tid = '" + id + "' ORDER BY sort";
    Args args = new Args("info", filter, 36, app.getInt("page", 1));
    Ls ls = dao.ls(args);
    //分页
    StringBuffer sb = new StringBuffer("");
    if (ls.getRowCount() != 0) {
        if (ls.getAbsPage() > 1) {
            sb.append("<a href=\"javascript:parent.__refreshRight(" + id + ",1);\" style=\"margin-right:5px;\">首页</a>");
            sb.append("<a href=\"javascript:parent.__refreshRight(" + id + "," + (ls.getAbsPage() - 1) + ");\" style=\"margin-right:5px;\">上一页</a>");
        } else {
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">首页</a>");
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">上一页</a>");
        }
        
        if (ls.getAbsPage() < ls.getPageCount()) {
            sb.append("<a href=\"javascript:parent.__refreshRight(" + id + "," + (ls.getAbsPage() + 1) + ");\" style=\"margin-right:5px;\">下一页</a>");
            sb.append("<a href=\"javascript:parent.__refreshRight(" + id + "," + ls.getPageCount() + ");\" style=\"margin-right:5px;\">尾页</a>");
        } else {
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">下一页</a>");
            sb.append("<a disabled=\"disabled\" style=\"margin-right:5px;\">尾页</a>");
        }
    }
%>
<table width="100%" height="100%" border="0"   cellpadding="0" cellspacing="0" >
	<%
              //每行显示TD个数
              int count = 6;
              int rows = 1;	//当前行
              int cols = 1;		//当前列
              //总记录数
              int jls = ls.getItems().length;
              Rs rslee[] = ls.getItems();
              StringBuffer sb0 = new StringBuffer();
              StringBuffer sb1 = new StringBuffer();
              sb1.append("<tr height=\"160px\" style='" + imageRight + "'>");
              for (int i = 1; i <= jls; i++) {
             	 String image = null;
                  if (rslee[i - 1].getFs("pic") == null) {
                      image = "<img class=\"photo1\" src='img/1.jpg'/>";
                  } else {
                      image = "<img id='" + rslee[i - 1].get("id") + "' class=\"photo1\" onclick=\"parent.rightFunction(this);\" src='../" + rslee[i - 1].getFs("pic")[0] + "'/>";
                  }
                  if (i % count == 0) {
                      sb1.append("<td width=\"265px\"class=\"border11\">" +
                              "<table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">" +
                              "<tr><td width=\"100px\"  class=\"photo1\">" + image +
                              "</td><td class=\"letterspace\">" +		 
                              "<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" class=\"nav\"> " +	
                              "<tr><td><font color='white'>" + rslee[i - 1].get("t0") + "</font></td></tr><tr>" +
                              "<td><font color='white'>市场价格：</font><span  class=\"op_digital_base_price\">" + rslee[i - 1].get("t1") + "</span>&nbsp;<font color='white'>元 </font></td>" +
                              "</tr><tr> <td><font color='white'>兑换积分：</font>" +
                              "<span  class=\"op_digital_base_price\">" + rslee[i - 1].get("t2") + "</span>&nbsp;<font color='white'>分</font></td>" +
                              "</tr></table></td></tr></table></td>");	 
                      sb1.append("</tr>");
                      sb0.append(sb1);
                      sb1 = new StringBuffer();
                      sb1.append("<tr height=\"160px\" style='" + imageRight + "'>");
                      rows++;
                      cols=1;
                  } else {
                 	 sb1.append("<td width=\"265px\"class=\"border11\">" +
                              "<table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">" +
                              "<tr><td width=\"100px\"  class=\"photo1\">" + image +
                              "</td><td class=\"letterspace\">" +		 
                              "<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" class=\"nav\"> " +	
                              "<tr><td><font color='white'>" + rslee[i - 1].get("t0") + "</font></td></tr><tr>" +
                              "<td><font color='white'>市场价格：</font><span  class=\"op_digital_base_price\">" + rslee[i - 1].get("t1") + "</span>&nbsp;<font color='white'>元 </font></td>" +
                              "</tr><tr> <td><font color='white'>兑换积分：</font>" +
                              "<span  class=\"op_digital_base_price\">" + rslee[i - 1].get("t2") + "</span>&nbsp;<font color='white'>分</font></td>" +
                              "</tr></table></td></tr></table></td>");	 
                 	 cols++;
                  }
              }
              //补全信息
              if(cols != 1){
             	 for (int j = 0; j < (count - cols + 1); j++) {
                      sb1.append("<td width=\"265px\"class=\"border11\">&nbsp;</td>");
                  }
             	 sb1.append("</tr>");
             	 sb0.append(sb1);
             	 sb1 = new StringBuffer();
             	 rows++;
             	 cols=1;
              }
              
              sb1 = new StringBuffer();
              for (int j = 0; j < (count - rows + 1); j++) {
            	  sb1.append("<tr height=\"160px\" style='" + imageRight + "'>");
                  for (int x = 0; x < count; x++) {
                	  sb1.append("<td width=\"265px\"class=\"border11\">&nbsp;</td>");
                  }
                  sb1.append("</tr>");
              }
         	 sb0.append(sb1);
	%>
  	<%=sb0.toString()%>
</table>
<%-- <%=sb.toString()%> --%>