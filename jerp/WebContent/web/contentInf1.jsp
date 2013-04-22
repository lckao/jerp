<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.jdiy.core.*" %>
<%
    //Web环境下用App类来获取JDiy上下文(它是JDiyContext的子类),注意用的是静态方法,在Servlet, Action中都可以这样写.
    App app = App.get();
    //下面获取数据库操作DAO
    Dao dao = app.getDao();

    String id = app.get("id");
    
    Rs rs = dao.rs(new Args("info", "id='" + id + "'"));
%>
<div style="width: 1620px;height: 960px;">
	<div style="width: 1620px;height: 5px;">
	
	</div>
	<div style="width: 1620px;height: 955px;">
		<div  style="width: 5px;height: 955px;float: left;">
		</div>
		<div  style="width: 1615px;height: 955px;float: left;clear: right;">
		   <div  style="width: 650px;height: 955px;float: left;">
		           <div  style="width: 650px;height:50px;">
		        
		          </div>
		           <div  style="width: 650px;height: 255px;">
		                       <p><B>　　Apple iphone 16G</B><p>
													          <p><B>　　iphone 16G 超强性价比</B><p>
													          <p><B>　　市场价格：</B><span  class="op_digital_base_price1">￥4750</span><B>元 </B><p>
														      <p><B>　　兑换积分：</B><span  class="op_digital_base_price1">￥470</span><B>分</B><p>
		                     
		                     
		          </div>
		          <div  style="width: 650px;height: 650px;">
		        <div id="fade_focus">
<div  class="loading"></div>
<ul style="display:none">
<li><a href="/" target="_blank"><img src="img/2.jpg"  width="600" height="600" /></a></li>
<li><a href="/" target="_blank"><img src=" img/3.jpg"  width="600" height="600"  /></a></li>
<li><a href="/" target="_blank"><img src=" img/4.jpg"  width="600" height="600"  /></a></li>
<li><a href="/" target="_blank"><img src="img/5.jpg"   width="600" height="600" /></a></li>
</ul>
</div>
		           </div>
		   </div>
		   <div  style="width: 965px;height: 955px;float: left;">
		             <div  style="width: 965px;height: 50px;">
		            
		
		              </div>
		              <div  style="width: 965px;height: 400px;">
		            <h2><B>简　　介：</B></h2>
		据报道，本届马拉松赛事的选拔标准是所有马拉松赛事中最高的，为了参加这项赛事，运动员们都经历了几个月甚至数年的训练。以
	下是参加了本次马拉松比赛的一些选手的叙述。肯尼亚选手韦斯利•科里尔韦斯利•科里尔是2012年的波士顿马拉松赛冠军得主，周一傍晚
	他一边用婴儿车推着他的女儿，一边恢复体力。他在这次比赛中获得了第五名。他说，我来自肯尼亚，离苏丹很近，那边有时会发生暴力
	事件；可是你来到美国之后，你会指望这里能更安全一点。他担心，未来组织马拉松赛事的成本会越来越高，因为他认为可能需要更多的
	警察。不过此事并未影响他对未来的规划。他说，我们会继续更加努力地训练，为了今天逝去的生命。
		   
		   
		   
		              </div>
		              <div  style="width: 965px;height: 505px;">
		            <h2><B>使用说明： </B></h2>
		据报道，本届马拉松赛事的选拔标准是所有马拉松赛事中最高的，为了参加这项赛事，运动员们都经历了几个月甚至数年的训练。以
	下是参加了本次马拉松比赛的一些选手的叙述。肯尼亚选手韦斯利•科里尔韦斯利•科里尔是2012年的波士顿马拉松赛冠军得主，周一傍晚
	他一边用婴儿车推着他的女儿，一边恢复体力。他在这次比赛中获得了第五名。他说，我来自肯尼亚，离苏丹很近，那边有时会发生暴力
	事件；可是你来到美国之后，你会指望这里能更安全一点。他担心，未来组织马拉松赛事的成本会越来越高，因为他认为可能需要更多的
	警察。不过此事并未影响他对未来的规划。他说，我们会继续更加努力地训练，为了今天逝去的生命。
		   
		   
		   
		             </div>
		   
		   
		   </div>
		</div>
	</div>
</div>