/*
 * Copyright ® 中国证监会中央监管信息平台版权所有 
 * <概要说明> 
 * @author: ${张龙涛} 
 * 修改时间: ${2014/12/29}
 */
/**
 * 名称：自定义组件公共方法
 * 功能：自定义组件公共方法
 * 时间 修改者 修改内容
 * ----------------------------------------------------------------------------
 * 2014/12/29 Pactera 张龙涛 初始创建
 */
/**
* 弹出新window窗口，并显示页面
* @method addwindow
* @param {Url} url 页面链接
* @param {String} id 窗口ID
* @param {Number} height 高度
* @param {Number} width 宽度
* @param {Number} x 横坐标(具体数值或百分比)
* @param {Number} y 纵坐标(具体数值或百分比)
* @param {Boolean} isopacity 背景是否透明(false:透明;true:不透明;默认为true)
*/
function addWindow(url, id, height, width, x, y, isOpacity) {
	var showWidth;
	var showHeight;
	var showX;
	var showY;
    
    if (id == null || id == "") {
		id = "windiv-" + Math.round(Math.random() * 1e10);
	}
	if (height != null && height != "") {
		showHeight = height;
	} else {
		showHeight = 500;
	}
    if (width != null && width != "") {
		showWidth = width;
	} else {
		showWidth = 800;
	}
	if (x != null && x != "") {
		showX = x;
	} else {
		showX = "10%";
	}
	if (y != null && y != "") {
		showY = y;
	} else {
		showY = "10%";
	}

	var data15 = {
		"data" : [{
					"url" : url
				}]
	};
	var win = document.createElement("div");
    win.id = id;
	$('body').append(win);
	$(win).windowdiv({
				content : data15,
				height : showHeight,
				width : showWidth,
				isOpacity : isOpacity,
				top : showY,
				left : showX
			});
	$(win).show();
}

/**
* 弹出新popup窗口，并显示内容
* @method addwindow
* @param {Html} html html内容
* @param {String} id 窗口ID
* @param {Number} height 高度
* @param {Number} width 宽度
* @param {Number} x 横坐标(具体数值或百分比)
* @param {Number} y 纵坐标(具体数值或百分比)
* @param {Boolean} isopacity 背景是否透明(false:透明;true:不透明;默认为false)
*/
function addPopup(html, id, height, width, x, y, isOpacity) {
	var showWidth;
	var showHeight;
	var showX;
	var showY;
    
    if (id == null || id == "") {
        id = "popdiv-"+ Math.round(Math.random() * 1e10);
    }
    if (height != null && height != "") {
        showHeight = height;
    } else {
        showHeight = 200;
    }
    if (width != null && width != "") {
		showWidth = width;
	} else {
		showWidth = 200;
	}
    if (x != null && x != "") {
		showX = x;
	} else {
		showX = event.clientX;
	}
    if (y != null && y != "") {
		showY = y;
	} else {
		showY = event.clientY;
	}

	var data16 = {
		"data" : [{
					"html" : html
				}]
	};
	var popup = document.createElement("div");
	popup.id = id;
	$('body').append(popup);
	$(popup).popupdiv({
				content : data16,
				height : showHeight,
				width : showWidth,
				isOpacity : isOpacity,
				top : showY,
				left : showX
			});
	$(popup).show();
//    $(popup).click(function() {
//				closeDiv(id);
//			});
}

/**
* 删除单个元素
* @method removeItem
* @param {String} id 元素ID
*/
function removeItem(id) {
    $("#"+id).remove();
}

/**
* 隐藏/表示窗口
* @method toggleItem
* @param {String} id 窗口ID
*/
function toggleItem(id) {
    $("#"+id).toggle(0);
    resizePage();
}

/**
* 页面Size重新计算
* @method resizePage
*/
function resizePage() {
    var changeHeight = $(".right_main").outerHeight();
    $("body").css("height",changeHeight);
    var ifm = parent.document.getElementById("iframepage");
    ifm.height = changeHeight;
    var ifmdiv= $(ifm).parent();
    ifmdiv.css("height",changeHeight);
}

/**
* 可向指定区域追加元素，并可对已追加的元素进行删除或统计操作
* @method addItems
* @param {String} id 指定区域ID
* @param {JSON} list 元素数据
* @param {Number} countId 统计元素ID
*/
function addItems(id, list,countId) {
    var item;
    var mode = "new";
    if($("#"+id).has("div").length!=0) {
        item = $("#"+id).has("div");
        mode = "update";
    } else {
        item = document.createElement("div");
        mode = "new";
            $("#"+id).append(item);
    }

    $(item).listdiv({
            content : list,
            mode : mode,
            countitem : countId
    });

}

/**
* 从指定区域删除元素，并可对已删除的元素进行删除或统计操作
* @method deleteItem
* @param {String} id 指定区域ID
* @param {JSON} list 元素数据
* @param {Number} countId 统计元素ID
*/
function deleteItem(id,countId) {
    if (countId != "") {
        $("#"+countId).val($("#"+id).parent().children("li").length-1);
    }
    removeItem(id);
}
//function addDateWindow() {
//    var dateWindow = document.createElement("div");
//    $(dateWindow).calendar({
//            showAlways : false,
//            format : 'yyyy-mm-dd'
//    });
//}