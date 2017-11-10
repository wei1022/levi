/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/20}
*/
(function($) {
    $.fn.noticediv = function(options) {
        var defaults = {
            title : "Notice",
            content : null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("noticediv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        $this.append("<div class='title'>" + opts.title + "</div><br/>");
        var body = "";
        body = body
                + "<div class='content'><marquee direction=up height="+(opts.height-40)+" width="+opts.width+" id=m onmouseout=m.start() onMouseOver=m.stop() scrollamount=2><p>";

        $.each(opts.content.data, function(index, item) {
                    body = body + "<a target='blank' href='" + item.url
                            + "' title='" + item.content + "'>" + item.content
                            + "<br /><br />";
                });
        body = body + "</p></marquee></div>";
        $this.append(body);
    };
})(jQuery);