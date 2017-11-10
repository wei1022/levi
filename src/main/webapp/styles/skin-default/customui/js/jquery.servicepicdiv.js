/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/28}
*/
(function($) {
    $.fn.servicepicdiv = function(options) {
        var defaults = {
            title : "",
            content : null,
            showRefresh:true,
            showUpdate:true,
            refreshEvent:null,
            updateEvent:null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("servicepicdiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        var title =""; 
        title = title + "<div class='box_title'>";
        title = title + "<span class='box_title_txt'>" + opts.title + "</span><span class='icon'>";
        if(opts.showUpdate) {
            title = title + "<a herf='#' class='update' onclick="+opts.updateEvent+"/>";
        }
        if(opts.showRefresh) {
            title = title + "<a herf='#' class='refresh' onclick="+opts.refreshEvent+"/>";
        }
        title = title + "</span></div><br/><br/>";
        $this.append(title);
        var body = "";
        body = body + "<div class='servicepicdiv'><ul>";
        $.each(opts.content.data, function(index, item) {
                    if(item.image!=null){
                        body = body + "<img src='" + item.image + "' width='100%' height='100%' />";
                    }
                });
        body = body + "</ul></div>";
        $this.append(body);
    };
})(jQuery);