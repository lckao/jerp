<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <div style="float:left;width:10px;height:100px;">

</div>
<div id="demo" style="float:left;overflow:hidden;width:780px;color:#ffffff;">




      <table cellpadding="0" cellspacing="0" border="0">
        <tr><td id="demo1" valign="top" align="center">
          <table cellpadding="2" cellspacing="0" border="0">
            <tr height=10>
	 <td>
	 </td>
	 </tr>
	 <tr>
            <tr align="center">
     <td> <table width="390" cellpadding="0" cellspacing="0" border="0">
	
	
	 <td>
	 <img src="img/2.jpg" width="100">
	 </td>
	  <td valign="top">
	   <p><font color="black">  叶定松</font></p>
	   <p><font color="black">  2002年优秀员工</font></p>
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
	   <p><font color="black">  叶定松</font></p>
	   <p><font color="black">  2002年优秀员工</font></p>
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
	    <p><font color="black">  叶定松</font></p>
	   <p><font color="black">  2002年优秀员工</font></p>
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
	     <p><font color="black">  叶定松</font></p>
	   <p><font color="black">  2002年优秀员工</font></p>
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
	     <p><font color="black">  叶定松</font></p>
	   <p><font color="black">  20年优秀员工</font></p>
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
  <script>
  var speed=3//速度数值越大速度越慢
  demo2.innerHTML=demo1.innerHTML
  function Marquee(){
  if(demo2.offsetWidth-demo.scrollLeft<=0)
  demo.scrollLeft-=demo1.offsetWidth
  else{
  demo.scrollLeft++
  }
  }
  var MyMar=setInterval(Marquee,speed)
  demo.onmouseover=function() {clearInterval(MyMar)}
  demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
  </script>