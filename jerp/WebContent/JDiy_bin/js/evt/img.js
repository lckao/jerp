/**
 * JDiy (v1.x)  -  javaWeb framework Page Events
 *
 * @author         : 子秋(folier)
 * @QQ             : 39886616
 * @copyright      : http://jdiy.net
 *
 **/
JSer.exec(function() {
    var
        checkState = function () {
            if (this.checked) {
                JSer(this).parent(5).addClass("CSel").removeClass("C", "COver");
            } else {
                JSer("#sorts_" + this.value).hide();
                JSer("#sort__" + this.value).show();
                JSer(this).parent(5).addClass("C").removeClass("CSel", "COver");
            }
        },
        selectAllState = function () {
            selectall.attr('checked', ids.val() != '' && ids.val().split(',').length == inItems.length);
        },
        fillIds = function (idsa) {
            var idsv = idsa.join(',');
            ids.val(idsv);
            try {
                parent.$jdiycache.ids = idsv;
            } catch (e) {
            }
            ctrls.each(function () {
                this.disabled = !idsa.length;
            });
        },
        updateIds = function () {
            var idsa = [], sub = -1;
            inItems.each(function () {
                if (this.checked) idsa[++sub] = "'" + this.value + "'";
            });
            fillIds(idsa);
            selectAllState();
        },
        ids = JSer("#ids"),
        ctrls = JSer("@name=JD_Ctrl"),
        trItems = JSer(".item"),
        inItems = JSer('input[name=idItem]'),
        sorts = JSer(".sorts"),
        sortt = JSer(".sortt"),
        selectall = JSer("#JD_SelectAll");

    inItems.click(function () {
        checkState.call(this);
        updateIds();
    });

    trItems.hover(
        function () {
            if (this.className.indexOf('CSel') == -1)JSer(this).addClass('COver').removeClass("C");
        },
        function () {
            if (this.className.indexOf('CSel') == -1)JSer(this).addClass('C').removeClass('COver');
        }
    ).dblclick(function () {
            var url = JSer(this).attr("href");
            if (url && url != "") JSer.url(url).go();
        }
    ).click(function () {
            var o = JSer("input[name=idItem]", this);
            if (o.length) {
                o[0].checked = !o[0].checked;
                checkState.call(o[0]);
                updateIds();
            }
        }
    );

    sortt.click(function () {
        var ino = JSer("input[name=idItem]", JSer(this).hide().parent(4));
        JSer(this).index(1).show();
        if (ino.length && !ino[0].checked) {
            ino[0].checked = true;
            checkState.call(ino[0]);
            updateIds();
        }
        return false;
    });

    JSer(".sortTD").dblclick(function () {
        return false;
    });

    sorts.click(function () {
        return false;//cancel bubble
    }).dblclick(function () {
            return false;//cancel bubble
        }
    ).mouseover(function () {
            this.select();
        }
    ).focus(function () {
            this.select();
        }
    ).blur(function () {
            if (this.value != parseInt(this.value)) this.value = JSer("#" + this.name.replace("_", "__")).attr('val');
        }
    ).keypress(function (event) {
            var index = JSer(this).attr("index");
            if (index == parseInt(index) && event.keyCode == 13) {
                try {
                    var sub = Number(index) + 1;
                    JSer(sortt[sub]).click();
                    sorts[sub].focus();
                } catch (e) {
                    JSer("#JD_Sort").click();
                }
            }
        }
    );

    JSer("#JD_Reverse").click(function () {
        var idsa = [], sub = -1;
        inItems.each(function () {
            this.checked = !this.checked;
            checkState.call(this);
            if (this.checked) idsa[++sub] = "'" + this.value + "'";
        });
        fillIds(idsa);
        selectAllState();
    });

    selectall.click(function () {
        var idsa = [], sub = -1, sel = this.checked;
        inItems.each(function () {
            this.checked = sel;
            checkState.call(this);
            if (this.checked) idsa[++sub] = "'" + this.value + "'";
        });
        fillIds(idsa);
    });


    JSer("#JD_Sort").click(function () {
        sorts = JSer(".sorts:visible");
        if (sorts.length == 0) {
            alert('您尚未修改排序，无需更新！');
            return;
        }
        var changed = false;
        for (var i = sorts.length; i--;) {
            if (sorts[i].value != JSer(sorts[i]).index(-1).attr('val')) {
                changed = true;
                break;
            }
        }
        if (!changed) {
            alert('您尚未修改排序或排序数字未发生变动，无需更新！');
            return;
        }
        if (confirm("您真的要更新选中项目的排序索引吗？")) {
            try {
                parent.JD_loading(true);
            } catch (e) {
            }
            JSer('#__JDiy_Action__').val("sort");
            this.form.submit();
        }
    });

    JSer("#JD_Delete").click(function() {
        if (confirm("【警告】：此操作可能无法撤消！\n\n您真的要删除选中的项目吗？")) {
            parent.JD_loading(true);
            this.form.__JDiy_Action__.value = "delete";
            this.form.submit();
        }
    });

    JSer(".btnBatCtrl").change(function () {
        if (confirm("您真地要执行此批量更改操作吗？")) {
            JSer('#__JDiy_Action__').val("doBatChange");
            JSer('#__JDiy_Param__').val(JSer(this).attr("field") + "," + this.value);
            JSer.url(this.form.action).sel(":input", this.form).ajax({
                method:'post',
                success:function (d) {
                    if (d.indexOf("success") == -1) alert(d);
                    else JSer.url().set("JD_Status", "successUpdate").go();
                }
            });
        } else {
            this.selectedIndex = 0;
        }
    });

    JSer("#cshbtn").click(function () {
        JSer.url().rdel("mmId", "sortField", "sortType").go();
    });



    if (ids.length) {
        var selectedIds = parent && parent.$jdiycache && parent.$jdiycache.ids || "";
        inItems.each(function () {
            this.checked = selectedIds.indexOf("'" + this.value + "'") != -1;
            checkState.call(this);
        });
        updateIds();
    }


    JSer(".keySelectForBat").each(function(){
        var batObj = JSer("select@field="+this.name);
        if(batObj.length){
            for(var i=0;i<this.childNodes.length;i++){
                batObj.append(this.childNodes[i]);
            }
            if(batObj[0].options.length<=2)batObj.hide();
            else try{batObj[0].options[1]=null;}catch(e){}
        }
    });

});