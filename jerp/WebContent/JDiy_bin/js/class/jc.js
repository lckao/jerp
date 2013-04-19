/**
 * JDiy  -  Class: jc.js
 *
 * @author         : folier
 * @QQ             : 39886616
 * @copyright : http://jdiy.net
 *
 **/
var yzmIsErr = true;
var isNoRepeat = true;
var jc = {doDelete: function(contextPath, table, id, signer, ldAbortMsg) {
    var cStr;
    var dall;
    if (ldAbortMsg == null) {
        cStr = "警告:\r\n此操作将删除此栏目及其下的全部信息，\r\n且不可撤消，请谨慎操作。\r\n\r\n您确定要执行此删除操作吗？";
        dall = 1;
    } else {
        cStr = "此操作无法撤消！您确定要执行此删除操作吗？";
        dall = 0;
    }
    if (confirm(cStr)) {
        JSer.url("ajax.jd").set({
            s:'del',
            __JDiy_Table__:table,
            __JDiy_Id__:id,
            __JDiy_Sign__:signer,
            __JDiy_Jump__:document.location.href,
            DelAll:dall
        }).ajax(function(d) {
            if (d.indexOf("success") != -1) {
                JSer.url().set("JD_Status", "successDelete").go();
            } else if (d.indexOf("hasSon") != -1) {
                if (ldAbortMsg == "") ldAbortMsg = "对不起，删除失败，由于此节点下面还有内容，因此不能删除此节点。";
                alert(ldAbortMsg);
            } else {
                alert(d);
            }
        });
    }
},doDeleteFile:function(fileName, fileSigner, fileDivName, fd) {
    if (confirm("警告:此操作不可撤消!\r\n您真地要删除此文件吗?")) {
        var ix = fileName.indexOf("JDiy_data/entity");
        if (ix < 0)return;
        JSer.url("ajax.jd").set({
            s:'delUpfile',
            fp:fileName,
            __JDiy_Sign__:fileSigner
        }).ajax(function(data) {
            if (data.indexOf('success') != -1) {
                if (document.getElementById(fileDivName) == null)document.location.reload(); else JSer('#' + fileDivName).hide();
                if(fd){
                    var countobj = JSer('#countfs_'+fd);
                    if(countobj.html()==parseInt(countobj.html())){
                        var ca = parseInt(countobj.html())-1;
                        countobj.html(String(ca));
                        if(ca<=0) JSer('#fsDIV_'+fd).hide();

                    }
                }
            } else alert('删除失败! 原因:\r\n' + data);
        });
    }
}
};
jc.Page = {/*
    getYzm:function(guid, contextPath, isEn) {
        if (guid == null)guid = 0;
        var t1 = isEn ? "Input the number in the picture." : "请填写后面图片中的四位数字";
        var rtn = [];
        rtn.push('<input name="JDiy_yzm" type="text" id="JDiy_yzm' + guid);
        rtn.push('" style="width:60px;" maxlength="4" title="' + t1 + '" />');
        rtn.push('<img src="' + contextPath + '/JDiy_bin/ajax.jd?s=printYzm" style="cursor:pointer"');
        rtn.push(' onclick="this.src=JSer.url(this.src).set(\'dt\', Math.random())"');
        rtn.push(' width="60" height="20" align="absmiddle" id="JDiy_yzm' + guid + '" />');
        return rtn.join("");
    },chkYzm:function(guid, contextPath, isEn) {
        var t1 = isEn ? "Sorry, the appointed validate code is not exists." : "对不起，chkYzm指定编号的验证码不存在！";
        var t2 = isEn ? "Input the validate code, please." : "请输入验证码";
        var t3 = isEn ? "Input the right validate code, please." : "请输入四位数字的验证码！";
        var t4 = isEn ? "Input the right validate code, please." : "对不起，验证码输入不正确！";
        var o = JSer("#JDiy_yzm" + guid)[0];
        if (o.length == 0) {
            alert(t1);
            return false;
        }
        if (o.value == '') {
            alert(t2);
            o.focus();
            return false;
        } else if (o.value.length != 4) {
            alert(t3);
            o.focus();
            return false;
        }
        yzmIsErr = true;
        JSer.url(contextPath + '/JDiy_bin/ajax.jd').set({
            s:'chkYzm',
            yzm: JSer("#JDiy_yzm" + guid).val()
        }).ajax({
                    async:false,
                    type:'script'
                });
        if (yzmIsErr) {
            alert(t4);
            JSer("#JDiy_yzm" + guid).click();
        }
        return !yzmIsErr;
    },*/
    plug:function(o) {
        if (!o.src) {
            alert('初始化jc.Page.plug()插件失败，未指定srsc文件地址。');
            return;
        }

        var src = o.src;
        var width = o.width;
        var height = o.height;
        var id = o.id ? o.id : 'JD_Plug';
        var noBuffer = o.noBuffer;
        var contextPath = o.root ? o.root : "";
        var ext = src.substring(src.lastIndexOf(".") + 1).toLowerCase();
        if (noBuffer) {
            src += "?" + Math.random();
        }

        if (width == 0 && height == 0)initLink(); else if (ext == 'rm' || ext == 'ram' || ext == 'rmvb')initRealPlayer(); else if (ext == 'swf')initFlashPlayer(); else if (ext == 'gif' || ext == 'bmp' || ext == 'png' || ext == 'jpg' || ext == 'jpe' || ext == 'jpeg')initPicture(); else initMediaPlayer();
        function initLink() {
            if (o.root == null) {
                alert("jc.Page.plug(paramObj)的paramObj参数未指定root属性.");
            }

            var p = contextPath + '/JDiy_bin/ext/';
            document.write('<img align="absmiddle" border="0" src="' + p + ext + '.gif" onerror="this.src=\'' + p + 'unknow.gif\'" />\r\n <a href="' + src + '" noEvt="noEvt" target="_blank">点击查看</a>');
        }


        function initPicture() {
            document.write('<img border="0" src="' + src + '"' + ((width != null && width != 0) ? ' width="' + width + '"' : '') + ((height != null && height != 0) ? ' height="' + height + '"' : '') + ' />');
        }


        function initRealPlayer() {
            var s = [];
            s.push('<object id="' + id + '" classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA"');
            s.push((width != null && width != '') ? ' width="' + width + '"' : ' width="100%"');
            s.push((height != null && height != '') ? ' height="' + height + '"' : ' height="100%"');
            s.push('><param name="_ExtentX" value="9313"> ');
            s.push('<param name="_ExtentY" value="7620"> ');
            s.push('<param name="AUTOSTART" value="1"> ');
            s.push('<param name="SHUFFLE" value="0"> ');
            s.push('<param name="PREFETCH" value="0"> ');
            s.push('<param name="NOLABELS" value="0"> ');
            s.push('<param name="src" value="' + src + '">');
            s.push('<param name="CONTROLS" value="ImageWindow"> ');
            s.push('<param name="CONSOLE" value="Clip1"> ');
            s.push('<param name="LOOP" value="0"> ');
            s.push('<param name="NUMLOOP" value="0">');
            s.push('<param name="CENTER" value="0"> ');
            s.push('<param name="MAINTAINASPECT" value="0"> ');
            s.push('<param name="BACKGROUNDCOLOR" value="#000000">');
            s.push('<embed src="' + src + '" type="audio/x-pn-realaudio-plugin" CONSOLE="Clip1" CONTROLS="ImageWindow"');
            s.push((width != null && width != '') ? ' width="' + width + '"' : ' width="100%"');
            s.push((height != null && height != '') ? ' height="' + height + '"' : ' height="100%"');
            s.push(' AUTOSTART="false"></object>');
            document.writeln(s.join(''));
        }

        function initFlashPlayer() {
            var vars = o.vars ? o.vars : null;
            var wmode = o.wmode ? o.wmode : "transparent";
            var s = [];
            s.push('<object id="' + id + '" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"');
            s.push(' codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0"');
            s.push((width != null && width != '') ? ' width="' + width + '"' : ' width="100%"');
            s.push((height != null && height != '') ? ' height="' + height + '"' : ' height="100%"');
            s.push(' align="middle">');
            s.push('<param name="allowScriptAccess" value="sameDomain" />\n');
            s.push('<param name="quality" value="high" />\n');
            s.push('<param name="menu" value="false" />\n');
            s.push('<param name="wmode" value="' + wmode + '" />\n');
            if (vars)s.push('<param name="FlashVars" value="' + vars + '" /> ');
            s.push('<param name="movie" value="' + src + '" />');
            s.push("<embed src=\"" + src + "\" quality=\"high\" name=\"index\" align=\"middle\" allowScriptAccess=\"sameDomain\" ");
            s.push((width != null && width != '') ? ' width="' + width + '"' : ' width="100%"');
            s.push((height != null && height != '') ? ' height="' + height + '"' : ' height="100%"');
            s.push(vars ? "FlashVars=\"" + vars + "\"" : "");
            s.push(' type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go');
            s.push('/getflashplayer" wmode="' + wmode + '" menu="false" />');
            s.push('</object>');
            document.writeln(s.join(""));
        }

        function initMediaPlayer() {
            var s = [];
            s.push('<object id="' + id + '" classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95"');
            s.push((width != null && width != '') ? ' width="' + width + '"' : ' width="100%"');
            s.push((height != null && height != '') ? ' height="' + height + '"' : ' height="100%"');
            s.push('><param id="furl" name="Filename" value="' + src + '">');
            s.push('<param name="AudioStream" value="-1">');
            s.push('<param name="AutoSize" value="0">');
            s.push('<param name="AutoStart" value="-1">');
            s.push('<param name="AnimationAtStart" value="-1">');
            s.push('<param name="AllowScan" value="-1">');
            s.push('<param name="AllowChangeDisplaySize" value="1">');
            s.push('<param name="AutoRewind" value="0">');
            s.push('<param name="Balance" value="0">');
            s.push('<param name="BaseURL" value>');
            s.push('<param name="BufferingTime" value="5">');
            s.push('<param name="CaptioningID" value>');
            s.push('<param name="ClickToPlay" value="-1">');
            s.push('<param name="CursorType" value="0">');
            s.push('<param name="CurrentPosition" value="-1">');
            s.push('<param name="CurrentMarker" value="0">');
            s.push('<param name="DefaultFrame" value>');
            s.push('<param name="DisplayBackColor" value="0">');
            s.push('<param name="DisplayForeColor" value="16777215">');
            s.push('<param name="DisplayMode" value="0">');
            s.push('<param name="DisplaySize" value="2">');
            s.push('<param name="Enabled" value="-1">');
            s.push('<param name="EnableContextMenu" value="-1">');
            s.push('<param name="EnablePositionControls" value="-1">');
            s.push('<param name="EnableFullScreenControls" value="0">');
            s.push('<param name="EnableTracker" value="-1">');
            s.push('<param name="InvokeURLs" value="-1">');
            s.push('<param name="Language" value="-1">');
            s.push('<param name="Mute" value="0">');
            s.push('<param name="PlayCount" value="1">');
            s.push('<param name="PreviewMode" value="0">');
            s.push('<param name="Rate" value="1">');
            s.push('<param name="SAMILang" value>');
            s.push('<param name="SAMIStyle" value>');
            s.push('<param name="SAMIFileName" value>');
            s.push('<param name="SelectionStart" value="-1">');
            s.push('<param name="SelectionEnd" value="-1">');
            s.push('<param name="SendOpenStateChangeEvents" value="-1">');
            s.push('<param name="SendWarningEvents" value="-1">');
            s.push('<param name="SendErrorEvents" value="-1">');
            s.push('<param name="SendKeyboardEvents" value="0">');
            s.push('<param name="SendMouseClickEvents" value="0">');
            s.push('<param name="SendMouseMoveEvents" value="0">');
            s.push('<param name="SendPlayStateChangeEvents" value="-1">');
            s.push('<param name="ShowCaptioning" value="0">');
            s.push('<param name="ShowControls" value="1">');
            s.push('<param name="ShowAudioControls" value="-1">');
            s.push('<param name="ShowDisplay" value="0">');
            s.push('<param name="ShowGotoBar" value="0">');
            s.push('<param name="ShowPositionControls" value="0">');
            s.push('<param name="ShowStatusBar" value="1">');
            s.push('<param name="ShowTracker" value="-1">');
            s.push('<param name="TransparentAtStart" value="0">');
            s.push('<param name="VideoBorderWidth" value="0">');
            s.push('<param name="VideoBorderColor" value="0">');
            s.push('<param name="VideoBorder3D" value="0">');
            s.push('<param name="Volume" value="-40">');
            s.push('<param name="WindowlessVideo" value="0">');
            s.push('</object>');
            document.writeln(s.join(""));
        }
    }};

jc.Form = function(fm) {
    this.fm = fm;
    function Alt(obj, msg) {
        if (msg)alert("对不起, " + msg + "。");
        try {
            fm[obj].focus();
            fm[obj].select();
        } catch(e) {
        }
        return false;
    }

    function Num(obj, msg, min, max, isFloat) {
        var v = fm[obj].value;
        var n = isFloat ? parseFloat(v) : parseInt(v);
        return(v != n || (min != null && n < min) || (max != null && n >= max)) ? Alt(obj, msg) : true;
    }

    function getSplit(str, spStr, spExp) {
        var s1 = str.replace(new RegExp(spExp, "ig"), spStr).split(spStr);
        var s2 = [];
        for (var i = 0; i < s1.length; i++)if (s1[i] != null && s1[i] != "")s2.push(s1[i]);
        return s2.join(spStr);
    }

    this.isNull = function(obj, msg) {
        return(fm[obj].value == "" && !Alt(obj, msg));
    };
    this.isInt = function(obj, msg, min, max) {
        return Num(obj, msg, min, max, false);
    };
    this.isFloat = function(obj, msg, min, max) {
        return Num(obj, msg, min, max, true);
    };
    this.isLen = function(obj, msg, min, max) {
        min = min ? min : 0;
        max = max ? max : 0;
        var len = fm[obj].value.length;
        var isok = len >= min && (max == 0 ? true : len < max);
        if (isok)return true; else return Alt(obj, msg);
    };
    this.isChk = function(obj, msg) {
        try {
            for (var i = 0; i < fm[obj].length; i++)if (fm[obj][i].checked)return String(fm[obj][i].value);
            void Alt(obj, msg);
            fm[obj][0].focus();
        } catch(e) {
            alert(e.description);
        }
        return null;
    };
    this.isDate = function(obj, msg) {
        var d = fm[obj].value;
        var dArr = d.split("-");
        if (dArr.length != 3)return Alt(obj, msg);
        try {
            var yy = parseInt(dArr[0]);
            var mm = parseInt(dArr[1]) - 1;
            var dd = parseInt(dArr[2]);
            var dt = new Date(yy, mm, dd);
            if (yy == dt.getFullYear() && mm == dt.getMonth() && dd == dt.getDate())return true; else return Alt(obj, msg);
        } catch(e) {
            return Alt(obj, msg);
        }
    };
    this.isExt = function(obj, exts, msg) {
        try {
            if (this.isNull(obj))return true;
            exts = getSplit(exts, ",", "[\.。　 ;；|、｜]+").toLowerCase();
            var extsA = exts.split(",");
            var ext = fm[obj].value.toLowerCase().substring(fm[obj].value.lastIndexOf(".") + 1);
            var ok = false;
            for (var i = 0; i < extsA.length; i++) {
                if (extsA[i] == ext) {
                    ok = true;
                    break;
                }
            }
            if (ok)return true; else {
                return Alt(obj, msg);
            }
        } catch(e) {
            alert(e.description);
            return false;
        }
    };
    this.setDef = function(obj, value) {
        if (fm[obj].value == "")fm[obj].value = value;
        return this;
    };
    this.split = function(obj, spStr, spExp) {
        fm[obj].value = getSplit(fm[obj].value, spStr, spExp);
        return this;
    };
    this.isRepeat = function(obj) {
        var tmpId = fm.__JDiy_Id__.value;
        var by = obj.by;
        if (by == null || by == "" || by == "tid") {
            by = "tid";
        } else if (by.toLowerCase() != "rootid" && by.toLowerCase() != "all") {
            alert("客户端脚本异常：isRepeat方法参数对象的by属性的值只能是下列值之一：\r\ntid, rootId, all");
            return true;
        }
        var tid = obj.rootId && by != 'tid' ? obj.rootId : fm.tid.value;
        if (obj.root == null) {
            alert("参数对象未指定root应用程序根路径属性.");
            return true;
        }
        if (!fm.t0) {
            alert("客户端脚本异常：当前的表单中未找到t0字段！");
            return true;
        }
        var table = fm.__JDiy_Table__.value;
        isNoRepeat = true;
        JSer.url('ajax.jd').set({
            s:'chkRepeat',
            tb:table,
            tid:tid,
            t0:fm.t0.value,
            id:tmpId,
            by:by
        }).ajax({async:false,type:'script'});
        return !isNoRepeat;
    }
};