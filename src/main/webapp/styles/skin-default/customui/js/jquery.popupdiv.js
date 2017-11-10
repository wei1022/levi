/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/12/29}
*/
/**
 * 名称：popup弹出框组件
 * 功能：显示popup弹出框，框体内可显示各种内容
 * 时间 修改者 修改内容
 * ----------------------------------------------------------------------------
 * 2014/12/29 Pactera 张龙涛 初始创建
 */
(function($) {
    $.fn.popupdiv = function(options) {
        var defaults = {
            content : null,
            height : 200,
            width : 200,
            top:"10%",
            left:"10%",
            isOpacity:false
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        $this.addClass("popupdiv");
        if(opts.isOpacity){
            $this.css({
                "top":0,
                "left":0
            });
        }
        var body = $("<div>").addClass("overin");
        body.css({
             "height":opts.height+"px",
            "width":opts.width+"px",
            "top":opts.top,
            "left":opts.left
        });
        if(opts.isOpacity){
            $this.append("<iframe class='overout' />");
        }
        $.each(opts.content.data, function(index, item) {
            if(item.html != null) {
                var child = $("<div>");
                child.html(item.html);
                body.append(child);
            }
            $this.append(body);
        });
    };
})(jQuery);