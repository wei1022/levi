/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/12/29}
*/
/**
 * 名称：窗口组件
 * 功能：显示窗口，窗口显示其他页面 
 * 时间 修改者 修改内容
 * ----------------------------------------------------------------------------
 * 2014/12/29 Pactera 张龙涛 初始创建
 */
(function($) {
    $.fn.windowdiv = function(options) {
        var defaults = {
            content : null,
            height : 500,
            width : 800,
            top:"10%",
            left:"10%",
            isOpacity:true
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        $this.addClass("windowdiv");
        if(opts.isOpacity){
            $this.css({
                "top":0,
                "left":0
            });
        }

        var body = "";
        var closeId ="";
        if(opts.isOpacity){
            body = body + "<iframe class='overout' />";
        } /*else {
            body = body + "<iframe class='overout2' />";
        }*/
        body = body + "<div class='overin' height="+opts.height+" width="+opts.width+" style='top:"+opts.top+"; left:"+opts.left+";' >";
        $.each(opts.content.data, function(index, item) {
            if(item.url != null) {
                closeId = "closebtn-" + Math.round(Math.random() * 1e10);
                body = body + "<div class='closediv' id="+closeId+" />";
                body = body + "<iframe class='iframe' src="+item.url+" height="+opts.height+" width="+opts.width+" style='top:"+opts.top+"; left:"+opts.left+";' />";
            }
            $this.append(body);
        });
        body = body + "</div>";
        $("#"+closeId).click(function(){
            removeItem($this.attr("id"));
        });
    };
})(jQuery);