<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    //Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
    App app = App.get();
    //下面获取数据库操作DAO
    Dao dao = app.getDao();

    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/css.css" />
<script type="text/javascript" src="js/JSer.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script language="JavaScript" src="js/javascipt.js"></script>
<script type="text/javascript">
	__refreshLeft(1);
	__refreshRight("",1);
	
	function __refreshLeft(page) {
        JSer.url("leftInf.jsp").set("page", page).ajax({
            method:"post",
            success:function (d) {
                JSer("#leftDIV").html(d);
            }
        });
    }
	
	function __refreshRight(id,page) {
        JSer.url("rightInf.jsp").set("id", id).set("page", page).ajax({
            method:"post",
            success:function (d) {
                JSer("#rightDIV").html(d);
            }
        });
    }
</script>
</head>
<body leftmargin="0" topmargin="0" >
<table width="1920" height="1080" border="0" cellpadding="0" cellspacing="0" >
    <tr height="120">
	   <td>
		 <table border="0"  width="100%" height="100%" cellpadding="0"  cellspacing="0">
		    <tr>
		        <td class="border1">
		            <img  class="photo3" src="img/Top.png" />	
		        </td>
			    <td width="100%" height="100%"class="border5" >	
		        </td>
		    </tr>
		 </table>
	    </td> 
    </tr>
    <tr> 
        <td> 
            <table width="100%" height="100%" border="0"   cellpadding="0" cellspacing="0"> 
			    <tr>
			        <td  id="leftDIV">
				    </td>
				   	<td id ="rightDIV"> 
				    </td>
			    </tr>
            </table>
        </td>
    </tr>
</table>
</body >
</html>