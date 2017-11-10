/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/21}
*/
(function($) {
    $.fn.singlepicdiv = function(options) {
        var defaults = {
            content: null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        $this.css({
                    "background" : "#0000ff",
                    "color" : "#ff0000",
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        
        var body = "";
        $.each(opts.content.data, function(index, item) {
            body = body + "<a target='blank' href='" + item.url +"' >";
            body = body + " <img src='" + item.image + "' width='100%' height='100%' />";
            body = body + " </a>";
            $this.append(body);
        });
    };
})(jQuery);