/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/27}
*/
(function($) {
    $.fn.modelinfodiv = function(options) {
        var defaults = {
            modelinfo : null,
            height:200,
            width:400
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("modelinfodiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        var title = "";
        title = title + "<div>";
        var body = "";
        var id = "modeltitle-"+Math.round(Math.random() * 1e10);
        body = body + "<div class='content'><ul id="+id+" onclick=opendiv() >";
        $.each(opts.modelinfo.models, function(index, item) {
            if(index==0){
                title = title + "<span class='on'>" + item.model + "</span>";
            } else {
                title = title + " | <span>" + item.model + "</span>";
            }
            body = body + "<li><div>" + item.content + "</div></li>";
        });
        title = title + "</div><br/>";
        body = body + "</ul></div>";
        $this.append(title);
        $this.append(body);
        $("#"+id+" li").eq(0).show().siblings("#"+id+" li").hide();
        
        $("span").hover(function(){
            $(this).addClass("on").siblings().removeClass("on");
            var index = $("span").index( $(this) );
            $("#"+id+" li").eq(index).show().siblings("#"+id+" li").hide();
        });
    };
})(jQuery);