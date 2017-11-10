/*
* Copyright ® 中国证监会中央监管信息平台版权所有
* <概要说明>
* @author: ${张龙涛}
* 修改时间: ${2014/10/29}
*/
/**
 * 名称：浮动框 功能：显示浮动框体，框体内可显示多个信息区块 时间 修改者 修改内容
 * ----------------------------------------------------------------------------
 * 2014/10/29 Pactera 张龙涛 初始创建
 */
(function($) {
    $.fn.floatdiv = function(options) {
        var defaults = {
            title : "Title",
            content : null
        };
        var opts = $.extend(defaults, options);
        var $this = $(this);
        $this.addClass("floatdiv");
        var closebutton = $("<div>").addClass("closediv").click(function() {
                    $("#divoverout").fadeOut(1000);
                    $this.fadeOut(1000);
                });
        var title = $("<div>").addClass("title").append("<span>" + opts.title+"</span>");
        $this.append(closebutton);
        $this.append(title);
//        var body = $("<div>").addClass("body");
        var body = "<div class=liucheng_line>";
        $.each(opts.content.data, function(index, item) {
                    if (index > 0) {
//                        body.append("<div>").addClass("jiantou");
                        body = body + "<div class=jiantou></div>";
                    }
                    body = body +"<div class=liucheng_box  onclick="+item.event+">";
                    body = body +"<div class=liucheng_box_l><img src="+item.icon+" width=62 height=57 /><span>"+item.statustext+"</span></div>";
//                    switch(item.status) {
//                            case "1":
//                            body = body +"<div class=liucheng_box_l><img src="+item.icon+" width=62 height=57 alt=a title=aaaa /><span>"+item.statustext+"</span></div>";
//                            break;
//                            case "2":
//                            body = body +"<div class=liucheng_box_l><img src="+item.icon+" width=62 height=57 alt=a /><span>"+item.statustext+"</span></div>";
//                            break;
//                            case "3":
//                            body = body +"<div class=liucheng_box_l ><img src="+item.icon+" width=62 height=57 alt=a /><span>"+item.statustext+"</span></div>";
//                            break;
//                            case "4":
//                            body = body +"<div class=liucheng_box_l ><img src="+item.icon+" width=62 height=57 alt=a /><span>"+item.statustext+"</span></div>";
//                            break;
//                            case "5":
//                            body = body +"<div class=liucheng_box_l ><img src="+item.icon+" width=62 height=57 alt=a /><span>"+item.statustext+"</span></div>";
//                            break;
//                            default:
//                            break;
//                        }
                   body = body +"<div class=liucheng_box_r><ul>"+
                                "<li><span><img src='styles/skin-default/customui/images/red.png' title="+item.counttext[0].red+" /></span><span>"+item.count[0].red+"</span></li>" +
                                "<li><span><img src='styles/skin-default/customui/images/yellow.png' title="+item.counttext[0].yellow+" /></span><span>"+item.count[0].yellow+"</span></li>" +
                                "<li><span><img src='styles/skin-default/customui/images/green.png' title="+item.counttext[0].green+" /></span><span>"+item.count[0].green+"</span></li>" +
                                "<li><span><img src='styles/skin-default/customui/images/blue.png' title="+item.counttext[0].blue+" /></span><span>"+item.count[0].blue+"</span></li>" +
                                "</ul></div>";
                   body = body +"</div>";
//                     if(item.red!=null){
//                        body.append("<li>"+item.red+"</ul>");
//                     }
//                     if(item.yellow!=null){
//                        body.append("<li>"+item.yellow+"</ul>");
//                     }
//                     if(item.green!=null){
//                        body.append("<li>"+item.green+"</ul>");
//                     }
//                     if(item.blue!=null){
//                        body.append("<li>"+item.blue+"</ul>");
//                     }
                });
                body = body +"</div>";
        $this.append(body);
    };
})(jQuery);