/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/24}
*/
(function($) {
    $.fn.queryresultdiv = function(options) {
        var defaults = {
            title : "Query Result",
            content : null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("queryresultdiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        
        $this.append("<div class='title'>" + opts.title + "</div><br/>");
        var body = "";
        body = body + "<div>";
        $.each(opts.content.data, function(index, item) {
                    if(item.content!=null){
                        body = body + "<p class='content'>" + item.content + "</p>";
                    }
                    if(item.imagetitle!=null){
                        body = body + "<br/><p class='imagetitle'>" + item.imagetitle + "</p>";
                    }
                    if(item.image!=null){
                        body = body + "<img src='" + item.image + "' width='100%' height='100%' />";
                    }
                });
        body = body + "</div>";
        $this.append(body);
    };
})(jQuery);