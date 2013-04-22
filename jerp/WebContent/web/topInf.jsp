<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    String filter = "tid = 'y0h4mbdtro' ORDER BY sort";
    Args args = new Args("info", filter);
    Ls ls = dao.ls(args);
%>
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