/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/11/27}
*/
(function($) {
    $.fn.flashdiv = function(options) {
        var defaults = {
            content: null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("flashdiv");
        $this.css({
                    "height":opts.height+"px",
                    "width":opts.width+"px",
                    "z-index":-1
                });
        
        var body = "";
        $.each(opts.content.data, function(index, item) {
            if(item.url!=null) {
                if(item.url.endWith("swf")) {
    //                body = body + "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='video/swflash.cab#version=10,0,0,239'>";
                    body = body + "<object style='z-index:-1;'>";
                    body = body + "<param name='wmode' value='transparent'>";
                    body = body + "<embed src="+item.url+" height="+opts.height+" width="+opts.width+" showcontrols=0  showstatusbar=0 wmode='transparent'>";
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