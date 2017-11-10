<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=basePath%>styles/skin-default/standard/css/style.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>styles/skin-default/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>

<script>
$(function(){
	$(".page_sidebar li").click(function(){//.end 节点元素返回上一步操作
		$(this).addClass('open').children('.sub_menu').slideDown(0).end().siblings().removeClass('open').children('.sub_menu').slideUp(0);
		leftsize();
		//$(this).children('.arrow').addClass('on')
	});
	
});
 function openPath (path){
	    var ipage = parent.document.getElementById("iframepage");
	    ipage.src =path;
	    leftsize();
  	    //parent.window.frames["iframepage"].location.href=path;
		
 	}
 
 function leftsize() {
     var ileft = parent.document.getElementById("iframeleft");
     ileft.height = $(".page_sidebar").outerHeight()+87;
     $(ileft).parent().css("height",ileft.height);
 }
</script>
<body style="background:none;">
<div class="logoin">
    <h4>admin 你好，欢迎登录</h4>
    <p><a href="#"><i id="ico_logo1"></i></a><a href="#"><i id="ico_logo2"></i></a><a href="#"><i id="ico_logo3"></i></a></p>
</div>
<ul class="page_sidebar">
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_1"></i><span class="title">线索管理</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li><a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_2"></i><span class="title">任务管理</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo"  href="#" onClick="openPath('<%=basePath %>cmtask/getAllPending?pageNum=1')">待处理任务</a>
            </li>
            <li>
                <a class="titleTwo"  href="#" onClick="openPath('<%=basePath %>cmtask/getAllFinished?pageNum=1')">已完成任务</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_3"></i><span class="title">行政许可</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#" onClick="openPath('监管1.html')">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_4"></i><span class="title">非现场检查</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li><a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_5"></i><span class="title">监管措施</span></a>
        <ul class="sub_menu">
            <li>
                <a class="titleTwo" href="#" onClick="openPath('../regulatorymeasures/regulatorymeasures.jsp')">进行中措施</a>
                
            </li>
                <li>
                <a class="titleTwo" href="#" onClick="openPath('../regulatorymeasures/regulatorymeasures1.jsp')">已作出措施</a>
                
            </li>
            
            <li>
                <a class="titleTwo" href="#" onClick="openPath('../regulatorymeasures/regulatorymeasures2.jsp')">查询统计</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree">高级查询</a></li>
                    <li><a href="#" class="titleThree">普通查询</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_6"></i><span class="title">行政处罚</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li><a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_6"></i><span class="title">复议及诉讼</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li><a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd" ><i class="icon_7"></i><span class="title">审慎分析</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#">管理2</a>
            </li>
            <li><a class="titleTwo" href="#">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_9"></i><span class="title">查询统计</span></a>
        <ul class="sub_menu">
            <li>
                <a class="titleTwo" href="行政处罚.html">行政处罚决定</a>
            </li>
            <li>
                <a class="titleTwo" href="#">查询统计</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree">高级查询</a></li>
                    <li><a href="#" class="titleThree">普通查询</a></li>
                </ul>
            </li>
        </ul>
    </li>
</ul>
</body>
</html>