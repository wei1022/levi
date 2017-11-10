<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<%@ include  file="includeheader.jsp"%>
<head>
</head>
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
                <a class="titleTwo" href="#" onclick="openPath('<%=basePath%>redirect?action=customuiDemo')">管理1</a>
            </li>
            <li>
                <a class="titleTwo" href="#" onclick="openPath('<%=basePath%>redirect?action=formDemo')">管理2</a>
            </li>
            <li><a class="titleTwo" href="#" onclick="openPath('<%=basePath%>redirect?action=realDemo')">管理3</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_2"></i><span class="title">任务管理</span></a>
        <ul class="sub_menu">
            <li>
                <a class="titleTwo" href="#">工作任务</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree" onclick="openPath('<%=basePath%>cmtask/prepareCreate/')">新建任务</a></li>
                   <%--  <li><a href="#" class="titleThree" onclick="openPath('<%=basePath%>routinetask/create/')">例行性任务</a></li> --%>
                </ul>
            </li>
            <li class="">
                <a class="titleTwo"  href="#" onClick="openPath('<%=basePath %>cmtask/getAllPending/')">待处理任务</a>
            </li>
            <li>
                <a class="titleTwo"  href="#" onClick="openPath('<%=basePath %>cmtask/getAllFinished/')">已完成任务</a>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_3"></i><span class="title">行政许可</span></a>
        <ul class="sub_menu">
            <li class="">
                <a class="titleTwo" href="#">管理1</a>
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
                <a class="titleTwo" href="#" onClick="openPath('<%=basePath%>regulatorymeasures/list/)">进行中措施</a>
                
            </li>
                <li>
                <a class="titleTwo" href="#" onClick="openPath('<%=basePath%>regulatorymeasures/listmake/')">已作出措施</a>
                
            </li>
            
            <li>
                <a class="titleTwo" href="#" >查询统计</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree" onClick="openPath('<%=basePath%>regulatorymeasures/statisticstop/')">高级查询</a></li>
                    <li><a href="#" class="titleThree" onClick="openPath('<%=basePath%>regulatorymeasures/statisticsnormal/)">普通查询</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_6"></i><span class="title">行政处罚</span></a>
        <ul class="sub_menu">
            <li>
                <a class="titleTwo" href="#" onClick="openPath('<%=basePath%>penalties/list/')">行政处罚决定</a>
            </li>
            <li>
                <a class="titleTwo" href="#">查询统计</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree" onClick="openPath('<%=basePath%>penalties/statisticstop/')">高级查询</a></li>
                    <li><a href="#" class="titleThree" onClick="openPath('<%=basePath%>penalties/penaltiesnormal/')">普通查询</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd"><i class="icon_7"></i><span class="title">复议及诉讼</span></a>
        <ul class="sub_menu">
            <li>
                <a class="titleTwo" href="#" onclick="openPath('<%=basePath%>reconsiderlitigationList/')">待处理</a>
            </li>
            <li>
                <a class="titleTwo" href="#" onclick="openPath('<%=basePath%>reconsiderlitigation/listMaked/')">已结案</a>
            </li>
            <li>
                <a class="titleTwo" href="#">查询统计</a>
                <ul class="sub_menu">
                    <li><a href="#" class="titleThree" onclick="openPath('<%=basePath%>reconsiderlitigation/statisticstop/')">高级查询</a></li>
                    <li><a href="#" class="titleThree" onclick="openPath('<%=basePath%>reconsiderlitigation/statisticsnormal/')">普通查询</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="defActive">
        <a href="#" class="titleTd" ><i class="icon_8"></i><span class="title">审慎分析</span></a>
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
                <a class="titleTwo" href="#">行政处罚决定</a>
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