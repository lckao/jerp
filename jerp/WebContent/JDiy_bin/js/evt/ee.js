/**
 * JDiy (v1.x)  -  javaWeb framework Page Events
 *
 * @author         : 子秋(folier)
 * @QQ             : 39886616
 * @copyright      : http://jdiy.net
 *
 **/
JSer.exec(function () {
    JSer(".btn").click(function () {
        var noEvent = JSer(this).attr("noEvt");
        var href = JSer(this).attr("href");
        if (href && noEvent == null) {
            JSer.url(href).go();
        }
    });
    if (JSer.browser.msie) {
        JSer(":text, :password, textarea").focus(
            function () {
                JSer(this).addClass("zltIn1");
            }).blur(function () {
                JSer(this).removeClass("zltIn1");
            });
    }

    if (String(navigator.appVersion).indexOf("MSIE 6") != -1) {
        JSer(".PNG").each(function () {
            var SC_w = this.width;
            var SC_h = this.height;
            var imgName = this.src.toUpperCase();
            if (imgName.substring(imgName.length - 3, imgName.length) == "PNG") {
                this.style.filter += "progid:DXImageTransform.Microsoft.AlphaImageLoader(src=" + this.src + ", sizingmethod=scale);";
                this.src = "../JDiy_bin/etc/transparent.gif";
                this.width = SC_w;
                this.height = SC_h;
            }
        });
    }

    JSer("@title").mouseover(function () {
        var title = JSer(this).attr('title');
        if (title != '') JSer(this).attr("zlt_tooltip", JSer(this).attr('title')).mousemove(function (e) {
            var s = JSer(this).attr("zlt_tooltip");
            if (!document.getElementById || s == null || s == '') return;
            var sObj = JSer("#toolTip0"),
                xObj = JSer("#toolTip1"),
                x = 0,
                y = 0,
                dde = document.documentElement;
            if (e.x) {
                x = e.clientX + dde.scrollLeft;
                y = e.clientY + dde.scrollTop;
            } else {
                x = e.pageX;
                y = e.pageY;
            }
            x += 15;
            y += 15;
            if (navigator.userAgent.indexOf("Netscape") != -1) {
                x += 25;
                y += 25;
            }
            var maxX = dde.clientWidth + dde.scrollLeft;
            var maxY = dde.clientHeight + dde.scrollTop;
            var minX = sObj[0].clientWidth;
            var minY = sObj[0].clientHeight;
            if (minX + x + 15 > maxX)x = x - minX - 25;
            if (minY + y + 25 > maxY)y = y - minY - 15;
            if (x < 0)x = 0;
            if (y < 0)y = 0;
            sObj.css("width", "auto").css("height", "auto");
            sObj.html(s.replace(/\[/gm, "<").replace(/\]/gm, ">")).css({left:x, top:y});
            xObj.css({
                width: sObj[0].clientWidth,
                height: sObj[0].clientHeight,
                left: eval(x + 5),
                top: eval(y + 5)
            });
            sObj.show().opacity(75);
            xObj.show().opacity(65);
            return false;
        }).mouseout(
            function () {
                JSer("#toolTip0, #toolTip1").hide();
            }).attr("title", "");
    });

    JSer('body').append('<div id="toolTip0" style="position:absolute;display:none;z-index:98;background-color:#f5faff;color:#9f57a0;padding:3px;border:1px #67afff solid;word-wrap : normal"></div><div id="toolTip1" style="position:absolute;display:none;z-index:78;background-color:#999;color:#666;"></div>');
    try {
        parent.JD_loading(false);
    } catch (e) {
    }
    JSer(window).on("beforeunload", function () {
        try {
            parent.JD_loading(true);
        } catch (e) {
        }
    })
    ///////////////////////////////客户特殊化/////////////////////////////////////////////
    JSer("#t1").change(function(){
    	if(JSer(this).parent().index(-1).html().indexOf("市场价格") != -1){
    		JSer("#t2").val(JSer("#t1").val() / 0.08);
    	}
    });
    
    JSer("a[@target=_blank]").each(function(i){
    	var pattern = new RegExp('JDiy', 'i');
    	var str = JSer(this).html();
    	 if(pattern.test(str)){
    		JSer(this).html("SAGE").attr("href","http://www.hzsage.com");
    	}
    });
    
    JSer("strong").each(function(i){
    	var pattern = new RegExp('JDiy', 'i');
    	var str = JSer(this).html();
        if(pattern.test(str)){
        	JSer(this).parent().html("Copyright© <strong title='' style='color:#040;cursor:pointer' data-jserguid='3'><a href='http://www.hzsage.com' target='_blank'>SAGE</a></strong>");
        }
    });
});
document.oncontextmenu=function(e){return false;} //屏蔽右键