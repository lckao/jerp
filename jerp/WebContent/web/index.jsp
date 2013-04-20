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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/promptumenu/jquery.promptu-menu.js"></script>
<script language="JavaScript" src="js/javascipt.js"></script>
<script type="text/javascript">
			$(function(){
				$('#rightDIV').promptumenu({width:1620, height:960, rows: 1, columns: 1, direction: 'horizontal', pages: true});	
			});
		</script>
</head>
<body leftmargin="0" topmargin="0" >
<table width="1920px" height="1080px" border="0" cellpadding="0" cellspacing="0" >
    <tr height="120px">
	   <td>
		 <table width="100%" height="100%" border="0"  cellpadding="0"  cellspacing="0">
		    <tr>
		        <td class="border1">
		            <img  class="photo3" src="img/Top.png" />	
		        </td>
			    <td width="100%" height="100%"class="border5" >	
			    
			    
			    
			    
			    <div id="demo" style="overflow:hidden;width:790px;color:#ffffff;">
      <table cellpadding="0" cellspacing="0" border="0">
        <tr><td id="demo1" valign="top" align="center">
          <table cellpadding="2" cellspacing="0" border="0">
            <tr align="center">
            
            
     <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	 <tr>
	 <td>
	 <img src="img/2.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p> 叶定松</p>
	   <p> 2002年优秀员工</p>
	 </td>
	 </tr>
	 </table>
	 </td>
	 
	 
               <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	 <tr>
	 <td>
	 <img src="img/3.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p> 叶定松1</p>
	   <p> 2002年优秀员工</p>
	 </td>
	 </tr>
	 </table>
	 </td>
	 
	 
     <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	 <tr>
	 <td>
	 <img src="img/2.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p> 叶定松2</p>
	   <p> 2002年优秀员工</p>
	 </td>
	 </tr>
	 </table>
	 </td>
	 
	 
        <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	 <tr>
	 <td>
	 <img src="img/2.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p> 叶定松3</p>
	   <p> 2002年优秀员工</p>
	 </td>
	 </tr>
	 </table>
	 </td>
	 
	 
                <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	 <tr>
	 <td>
	 <img src="img/2.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p> 叶定松4</p>
	   <p> 2002年优秀员工</p>
	 </td>
	 </tr>
	 </table>
	 </td>
	 
	 
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