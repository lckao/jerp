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
    	imageRight = "background-image: url(img/BG1.png);";	//默认图片
    } else {
    	imageRight = "background-image: url(../" + rsLeft.getFs("pico")[0] + ");";
    }
    
    String filter = "tid = '" + id + "' ORDER BY sort";
    Args args = new Args("info", filter);
    Ls ls = dao.ls(args);
%>
<%
	int pages = 36; //每页显示个数
	int count = 6; //每行显示个数
	int rows = 1;	//当前行
	int cols = 1;	//当前列
	//总记录数
	int jls = ls.getRowCount();
	Rs rslee[] = ls.getItems();
	StringBuffer sb0 = new StringBuffer();
	StringBuffer sb1 = new StringBuffer();
	StringBuffer sb2 = new StringBuffer();
	
	boolean check = false;  //判断是否完整
	sb0.append("<li>");	
	
	for (int i = 1; i <= jls; i++) {
		String image = null;
		if (rslee[i - 1].getFs("pic") != null) {
			image = "../" + rslee[i - 1].getFs("pic")[0];
		} else {
			image = "img/1.jpg";		//默认图片
		}
	     if (i % count == 0) {
	    	 sb2.append("<div style=\"width: 270px;height: 160px;float: left;clear: right;\">");	 
	    	 sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
	    	 sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
	    	 sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\">");	 
	    	 sb2.append("<div style=\"width: 100px;height: 155px;float: left;\">");
	    	 sb2.append("<img id='" + rslee[i - 1].get("id") + "' onclick='window.parent.rightFunction(this);' alt=\"" + rslee[i - 1].get("t0") + "\" src=\"" + image + "\" style=\"width: 90px;height: 90px;margin-left: 5px;margin-top: 32px;\" />");
	    	 sb2.append("</div><div style=\"width: 5px;height: 155px;float: left;\"></div>");
	    	 sb2.append("<div style=\"width: 160px;height: 155px;padding-top:50px;color:white;float: left;clear: right;\">");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;text-align: center;\">" + rslee[i - 1].get("t0") + "</div>");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;text-align: center;\">市场价格：" + rslee[i - 1].get("t1") + "&nbsp;元</div>");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;clear: right;text-align: center;\">兑换积分：" + rslee[i - 1].get("t2") + "&nbsp;分</div>");
	    	 sb2.append("</div></div></div>");	
	    	 sb1.append(sb2);
	    	 sb2 = new StringBuffer();
	    	 rows++;
             cols=1;
	     } else {
	    	 sb2.append("<div style=\"width: 270px;height: 160px;float: left;\">");	 
	    	 sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
	    	 sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
	    	 sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\">");	 
	    	 sb2.append("<div style=\"width: 100px;height: 155px;float: left;\">");
	    	 sb2.append("<img id='" + rslee[i - 1].get("id") + "' onclick='window.parent.rightFunction(this);' alt=\"" + rslee[i - 1].get("t0") + "\" src=\"" + image + "\" style=\"width: 90px;height: 90px;margin-left: 5px;margin-top: 32px;\" />");
	    	 sb2.append("</div><div style=\"width: 5px;height: 155px;float: left;\"></div>");
	    	 sb2.append("<div style=\"width: 160px;height: 155px;padding-top:50px;color:white;float: left;clear: right;\">");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;text-align: center;\">" + rslee[i - 1].get("t0") + "</div>");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;text-align: center;\">市场价格：" + rslee[i - 1].get("t1") + "&nbsp;元</div>");
	    	 sb2.append("<div style=\"width: 160px;height: 20px;float: left;clear: right;text-align: center;\">兑换积分：" + rslee[i - 1].get("t2") + "&nbsp;分</div>");
	    	 sb2.append("</div></div></div>");	
	    	 cols++;
	     }
	     
	     if (i % pages == 0) {
	    	 sb0.append(sb1); 
	    	 sb0.append("</li>");
	    	 sb1 = new StringBuffer();
	    	 rows = 1;	
	    	 cols = 1;
	    	 if(i != jls){
	    		 sb0.append("<li>");	
	    	 } else {
	    		 check = true;
	    	 }
	     }
	 }
	
	//补全信息
	if(!check){
        if(cols != 1){
       	 for (int j = 0; j < (count - cols + 1); j++) {
       		 if(j == count - cols){
       			sb2.append("<div style=\"width: 270px;height: 160px;float: left;clear: right;\">");	 
				sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
				sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
				sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\"></div>");		 
				sb2.append("</div>");	
       		 } else {
       			sb2.append("<div style=\"width: 270px;height: 160px;float: left;\">");	 
				sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
				sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
				sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\"></div>");		 
				sb2.append("</div>");	 
       		 }
         }
       	 sb1.append(sb2);
    	 sb2 = new StringBuffer();
    	 rows++;
         cols=1;
        }

        for (int j = 0; j < (count - rows + 1); j++) {
        	sb2 = new StringBuffer();
        	for (int l = 0; l < count; l++) {
        		if(l == count - 1){
           			sb2.append("<div style=\"width: 270px;height: 160px;float: left;clear: right;\">");	 
    				sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
    				sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
    				sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\"></div>");		 
    				sb2.append("</div>");	
           		 } else {
           			sb2.append("<div style=\"width: 270px;height: 160px;float: left;\">");	 
    				sb2.append("<div style=\"width: 270px;height: 5px;background-image:url('img/W.png');\"></div>");	 
    				sb2.append("<div style=\"width: 5px;height: 155px;background-image:url('img/W.png');float: left;\"></div>");	 
    				sb2.append("<div style=\"width: 265px;height: 155px;" + imageRight + "float: left;clear: right;\"></div>");		 
    				sb2.append("</div>");	 
           		 }
        	}
			sb1.append(sb2);
        } 
   	 	sb0.append(sb1);
	}
%>
<ul class="promptu-menu2">
<%=sb0.toString()%>
</ul>