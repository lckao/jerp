<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="net.jdiy.core.*"%>
<%
	//Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
	App app = App.get();
	//下面获取数据库操作DAO
	Dao dao = app.getDao();

	String id = app.get("id");

	Rs rs = dao.rs(new Args("info", "id='" + id + "'"));
%>
<div style="width: 1620px; height: 960px;">
	<div style="width: 1620px; height: 5px;"></div>
	<div style="width: 1620px; height: 955px;">
		<div style="width: 5px; height: 955px; float: left;"></div>
		<div
			style="width: 1615px; height: 955px; float: left; clear: right; background-image: url('img/CPBG.png');">
			<div style="width: 50px; height: 955px; float: left;"></div>
			<div style="width: 650px; height: 955px; float: left;">
				<div style="width: 650px; height: 50px;"></div>
				<div style="width: 650px; height: 255px; padding: 0px;">
					<div>
						<b><%=rs.get("t0")%></b>
					</div>
					<div>
						<b><%=rs.get("t15")%></b>
					</div>
					<%-- <div>
						<b>市场价格：</b><%=rs.get("t1")%><b>元 </b>
					</div> --%>
					<div>
						<b>兑换积分：</b><%=rs.get("t2")%><b>分</b>
					</div>
				</div>
				<div style="width: 650px; height: 650px;">
					<div id="fade_focus">
						<div class="loading"></div>
						<ul style="display: none">
							<%
								for (int i = 0; i < rs.getFs("pic").length; i++) {
							%>
							<li><a href="javascript:void" target="_blank"><img
									src="<%=rs.getFs("pic")[i]%>" width="600" height="600" /></a></li>
							<%
								}
							%>
						</ul>
					</div>
				</div>
			</div>
			<div style="width: 15px; height: 955px; float: left;"></div>
			<div style="width: 885px; height: 955px; float: left;">
				<div style="width: 885px; height: 50px;"></div>
				<div style="width: 885px; height:895px;overflow:hidden">
					<h2>
						<b>简 介：</b>
					</h2>
					<%=rs.getX("jj")%>
				  
				</div>
				<div style="width: 885px; height: 10px;"></div>
			</div>
			<div style="width: 15px; height: 955px; float: left;"></div>
	</div>
</div>