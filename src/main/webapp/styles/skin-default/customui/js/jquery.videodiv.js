/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/11/27}
*/
(function($) {
    $.fn.videodiv = function(options) {
        var defaults = {
            content: null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("videodiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px",
                    "z-index":-1
                });
        
        var body = "";
        $.each(opts.content.data, function(index, item) {
            if(item.url!=null) {
                if(item.url.endWith("mp4")||item.url.endWith("wmv")) {
                    body = body + "<object style='z-index:-1;' type='video/x-ms-wmv' height="+opts.height+" width="+opts.width+">";
                    body = body + "<param name='src' value="+item.url+">";
                    body = body + "<param name='autoStart' value=1>";
                    body = body + "<param name='ShowControls' value='1'>";
                    body = body + "<param name='ShowStatusBar' value='0'>";
                    body = body + "<param name='EnableContextMenu' value='1'>";
                    body = body + "<param name='ShowCaptioning' value='0'>";
                    body = body + "<param name='wmode' value='transparent'>";
                    body = body + "</object>";
                }
            }
            $this.append(body);
        });
    };
    
        String.prototype.endWith=function(s){
          if(s==null||s==""||this.length==0||s.length>this.length)
             return false;
          if(this.substring(this.length-s.length)==s)
             return true;
          else
             return false;
          return true;
         };

})(jQuery);