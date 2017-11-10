/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/20}
*/
(function($) {
    $.fn.infodiv = function(options) {
        var defaults = {
            title : "Title",
            content : null,
            height : 200,
            width : 200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("infodiv");
        $this.css({
                    "height" : opts.height + "px",
                    "width" : opts.width + "px"
                });
        $this.append("<div class='title'>" + opts.title + "</div><br/>");
        var body = "";
        body = body + "<div><ul>";
        $.each(opts.content.data, function(index, item) {
            body = body + "<li><a target='blank' href='" + item.url
                    + "' title='" + item.content + "'>" + item.content + "</li>";
        });
        body = body + "</ul></div>";
        $this.append(body);
    };
})(jQuery);