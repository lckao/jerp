<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%@ page import="net.jdiy.util.*" %>
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
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>礼品展示</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="js/JSer.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/promptumenu/jquery.promptu-menu.js"></script>
<script type="text/javascript" src="js/turn.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<%@ include file="check.jsp" %>
</head>
<body leftmargin="0" topmargin="0" >
<div style="width: 1920px;height: 1080px;">
	<%
		if(check){
	%>
	<div style="width: 1920px;height: 120px;">
		<div style="width: 1110px;height: 120px;background-image:url('img/Top.png');float: left;"></div>
		<div style="width: 5px;height: 120px;background-image:url('img/W.png');float: left;"></div>
		<div style="width: 805px;height: 120px;background-image:url('img/Bar.png');float: left;clear: right;">
			<%@ include file="topInf.jsp" %>
		</div>
	</div>
	<div style="width: 1920px;height: 960px;">
		<div id="leftDIV" style="width: 300px;height: 960px;float: left;">
		</div>
		<div id ="rightDIV" style="width: 1620px;height: 960px;float: left;clear: right;">
		</div>
	</div>
	<%
		} else {
	%>
		对不起！您不是授权用户！
	<%
		}
	%>
</div>
</body>
</html>