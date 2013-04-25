/**
 * JDiy (v1.x)  -  javaWeb framework Page Events
 *
 * @author         : 子秋(folier)
 * @QQ             : 39886616
 * @copyright      : http://jdiy.net
 *
 **/

var processPst = 0;
function showLoadingBar() {
    JSer.url(
        '~.jd?~=processbar@Ajax'
    ).ajax(
        function (d) {
            var da = d.split("|");
            if (da.length == 4) {
                JSer('#loadingBar').show();
                processPst = parseInt(da[0]);
                JSer('#upPercent').html(processPst + '%');
                if (processPst < 100)JSer('#upByteInfo').html('总共:' + da[1] + '　已上传:' + da[2] + '　速率:' + da[3] + '/秒');
                else JSer('#upByteInfo').html('等待最后处理，即将完成…');
                JSer('#upProcessBar').css('width', 3 * processPst + 'px');
            }
        }
    );
    if (processPst < 100) setTimeout(showLoadingBar, 20);
}

function changeEditorHeight(instance, type) { //type: 1: height+    -1: height-   0: height reset
    var o = JSer("#" + instance + "___Frame");
    if (!o.data('EditorHeight')) o.data('EditorHeight', o.height());
    if (type == 1) {
        o.height(o.height() + 100);
    } else if (type == -1) {
        var old = o.data('EditorHeight') || 0;
        o.height(Math.max(old, o.height() - 100));
    } else {
        if (o.data('EditorHeight'))o.height(o.data('EditorHeight'));
    }
}

function blurNumber(o) {
    var j = JSer(o);
    if (j.val() == parseFloat(j.val())) {
        j.attr('od', j.val());
    } else {
        j.val(j.attr('od'));
    }
}

function addExpandFile(fd){
    var n = JSer('.file_item', '#filediv_'+fd).length + (parseInt(JSer('#countfs_'+fd).html()) || 0);
    var l = parseInt(JSer('#'+fd+'_expandNum').val()) || Number.MAX_VALUE;

    if(n>=l){
        alert('您最多只可以上传'+n+'个文件.');
        return;
    }
    var guid = new Date().getTime();
    JSer('#filediv_'+fd).append('<div class="file_item"><input name="'+fd+'@'+guid+'" class="file_'+fd+'" size="15" type="file"/> ' +
        '<input type="button" class="btn" value="x 删除" onclick="JSer(this).parent().remove();" /> </div>');
}

function linkageLoad(field, tb, rid, aid, rootSelectable, depth){
    JSer("#"+field).val(aid);
    JSer.url("~.jd?~=linkageLoad@Ajax&_="+Math.random()).set({
        tb:tb,
        rid:rid,
        aid:aid,
        rootSelectable:rootSelectable,
        depth:depth,
        onChange:"linkageLoad('"+field+"','"+tb+"','"+rid+"',this.value, "+rootSelectable+", "+depth+")"
    }).ajax({
            success:function(d){
                JSer("#linkageDIV_"+field).html(d);
                if(JSer.browser.msie){//垃圾IE动态载入的下拉菜单选不中
                    JSer(".linkagesel").each(function(){
                        var o=this.options;
                        for(var i=0;i< o.length;i++){
                            if(o[i].sub){
                               this.selectedIndex = i;
                               break;
                            }
                        }
                    });
                }
            }
        });
}


JSer.exec(function () {
    JSer(".linkageDIV").each(function(){
        var fd = JSer(this).attr("id").substring(11),
            data=JSer(this).attr("_data").split(";");
        linkageLoad(fd, data[0], data[1], JSer("#"+fd).val(), data[2], data[3]);
    });
});