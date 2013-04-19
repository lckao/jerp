/**
 * JDiy (v1.x)  -  javaWeb framework Page Events
 *
 * @author         : 子秋(folier)
 * @QQ             : 39886616
 * @copyright      : http://jdiy.net
 *
 **/

JSer.exec(function() {
    JSer("#zltForm").submit(function() {
        var t = JSer("#tit");
        if(t.val()==''){
            alert('请输入菜单名称!');
            t.focus();
            return false;
        }
        t=JSer("#sort");
        if(t.val()!=parseInt(t.val()) || parseInt(t.val())<0){
            alert('排序索引必须是一个大于等于０的整数!');
            t.focus();
            return false;
        }
    });
});