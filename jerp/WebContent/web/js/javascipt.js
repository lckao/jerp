__refreshLeft(1);
__refreshRight("",1);

function __refreshLeft(page) {
    JSer.url("leftInf.jsp").set("page", page).ajax({
        method:"post",
        success:function (d) {
            JSer("#leftDIV").html(d);
        }
    });
}

function __refreshRight(id,page) {
    JSer.url("rightInf.jsp").set("id", id).set("page", page).ajax({
        method:"post",
        success:function (d) {
            JSer("#rightDIV").html(d);
        }
    });
}

function __refreshContent(id) {
    JSer.url("contentInf.jsp").set("id", id).ajax({
        method:"post",
        success:function (d) {
            JSer("#rightDIV").html(d);
        }
    });
}

function leftFunction(element){
	__refreshLeft(1);
    __refreshRight(JSer(element).attr("id"),1);
}

function rightFunction(element){
	__refreshContent(JSer(element).attr("id"));
}