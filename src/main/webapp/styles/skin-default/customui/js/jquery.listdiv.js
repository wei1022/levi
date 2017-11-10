/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/12/29}
*/
/**
 * 名称：元素追加组件
 * 功能：可向指定区域追加元素，并可对已追加的元素进行删除或统计操作
 * 时间 修改者 修改内容
 * ----------------------------------------------------------------------------
 * 2014/12/29 Pactera 张龙涛 初始创建
 */
(function($) {
    $.fn.listdiv = function(options) {
        var defaults = {
            content : null,
            mode : "new",
            countitem : "",
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        var body = "";
        if (opts.mode == "new") {
            $this.addClass("listdiv");
            body = "<ul>";
            $.each(opts.content.data, function(index, item) {
                if(item.content != null) {
                    var id = "li-"+ Math.round(Math.random() * 1e10);
                    body = body + "<li id="+id+" title="+item.content+"><span>"+item.content+"</span>" +
                            "<i onclick=deleteItem(\'"+id+"\',\'"+opts.countitem+"\')>X</i>" +
                            "<input type=hidden name="+item.name+" value="+item.value+" /></li>";
                }
            });
            body = body + "</ul>";
            $this.append(body);
        } else if (opts.mode == "update") {
            $.each(opts.content.data, function(index, item) {
                if(item.content != null) {
                    var id = "li-"+ Math.round(Math.random() * 1e10);
                    body = body + "<li id="+id+" title="+item.content+"><span>"+item.content+"</span>" +
                            "<i onclick=deleteItem(\'"+id+"\',\'"+opts.countitem+"\')>X</i>" +
                            "<input type=hidden name="+item.name+" value="+item.value+" /></li>";
                }
            });
            if($this.has("ul").length !=0) {
                $this.find("ul").append(body);
            }
        }
        if (opts.countitem != "") {
            $("#"+opts.countitem).val($this.find("ul").children("li").length);
        }
    };

})(jQuery);