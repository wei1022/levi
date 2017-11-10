/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/22}
*/
(function($) {
    $.fn.multipicdiv = function(options) {
        var defaults = {
            title:'Images',
            content: null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("multipicdiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px"
                });
        $this.append("<div class='title'>" + opts.title + "</div>");
        var body = "";
        body = body + "<div class='banner'> <ul class='slide'>";
        var i = 0;
        $.each(opts.content.data, function(index, item) {
                if( i==0 ){
                    body = body + "<li class=on>";
                } else {
                    body = body + "<li>";
                }
                body = body + "<a target='blank' href='" + item.url+ "'>" 
                        + " <img src='" + item.image + "' width='100%' height='100%' />";
                        + "</a></li>";
                i++;
            });
        body = body + "</ul>";
        body = body + "<ul class='num'>";
        for(var j=1; j<=i; j++){
            if( j==1 ){
                body = body + "<li class=on>";
            } else {
                body = body + "<li>";
            }
            body = body +j+"</li>";
        }
        body = body + "</ul>";
        body = body + "</div>";
        $this.append(body);

        var curr = 0;       
        $(".num li").each(function(i){          
            $(this).mouseover(function(){
                curr = i;
                $(".slide li").eq(i).fadeIn("slow").siblings().hide();
                $(this).addClass("on").siblings().removeClass("on");
                return false;
            });
        }); 
        var len = $(".num li").length;  
        var timer = setInterval(function(){
            var todo = (curr + 1) % len;
            $(".num li").eq(todo).mouseover();
        },3000);
        $(".banner").hover(function(){
            clearInterval(timer);
        },function(){
            clearInterval(timer);
            timer = setInterval(function(){
                var todo = (curr + 1) % len;
                $(".num li").eq(todo).mouseover();
            },3000);
        });
        };
})(jQuery);