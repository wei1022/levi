/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/28}
*/
(function($) {
    $.fn.serviceinfodiv = function(options) {
        var defaults = {
            title : "",
            content : null,
            showRefresh:true,
            showUpdate:true,
            showEdit:true,
            showDelete:true,
            refreshEvent:null,
            updateEvent:null,
            editDetailEvent:null,
            deleteDetailEvent:null,
            height:200,
            width:200
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        this.addClass("serviceinfodiv");
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
        body = body + "<div class='serviceinfodiv'><ul>";
        $.each(opts.content.data, function(index, item) {
                    if(item.content!=null){
                        switch(item.status) {
                            case "1":
                            body = body + "<li class=c_red><span class='content'>";
                            break;
                            case "2":
                            body = body + "<li class=c_yellow><span class='content'>";
                            break;
                            case "3":
                            body = body + "<li class=c_green><span class='content'>";
                            break;
                            case "4":
                            body = body + "<li class=c_grey><span class='content'>";
                            break;
                            default:
                            break;
                        }
                        body = body + "<a target='blank' href='" + item.url
                            + "' title='" + item.content + "'>" + item.content
                            + "</a></span>";
                        if(opts.showDelete) {
                            body = body + "<a href='#' class='sc_icon' onclick="+opts.deleteDetailEvent+"></a>";
                        }
                        if(opts.showEdit) {
                            body = body + "<a href='#' class='xg_icon' onclick="+opts.editDetailEvent+"></a>";
                        }
                        body = body +"</li>";
                    }
                });
        body = body + "</ul></div>";
        $this.append(body);
    };
})(jQuery);