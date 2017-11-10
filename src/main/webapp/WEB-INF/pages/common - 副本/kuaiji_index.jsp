<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会计监管</title>
<link href="<%=basePath%>styles/skin-default/standard/css/style.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>styles/skin-default/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>

</head>

<body style="background:none;">
<div class="right_main">
    <div class="right_txt">
        <div class="box395">
                <div class="box_title"><span class="box_title_txt icon_list">注册会计师连续执业年数分布</span><span class="box_title_icon"><a href="" class="xiugai">修改</a><a href="" class="shuaxin">刷新</a></span></div>
                <div class="content_text">
                    <ul>
                        <li class="yuan_red"><a href="#" onclick="opendiv()">瑞华会计事务所（最近变更注册地址）</a></li>
                        <li class="yuan_red"><a href="#">众华会计事务所（最近设立分所）</a></li>
                        <li class="yuan_hui"><a href="#">安永华明会计事务所（最近设立分所）</a></li>
                        <li class="yuan_hui"><a href="#">中通诚资产评估有限公司（最近变更名称）</a></li>
                    </ul>
                </div>
           </div>
        <div class="box193">
                <div class="box_title"><span class="box_title_txt">代办事项</span><span class="box_title_icon"><a href="#" class="shuaxin">刷新</a></span></div>
                <div class="box_content193 content_text2">
                    <ul>
                        <li class="yuan_red"><a href="#">北京兴华会计师所<span class="badge">5</span></a></li>
                        <li class="yuan_huang"><a href="#">北京永拓会计事务所<span class="badge">2</span></a></li>
                        <li class="yuan_lv"><a href="#">北京国荣兴华资产评估...</a></li>
                        <li class="yuan_hui"><a href="#">北京京都中新资产评估...</a></li>
                    </ul>
                </div>
           </div>
        <div class="box193 tonggao">
                <div class="box_title"><span class="box_title_txt">公告</span><span class="box_title_icon"><a href="#" class="guangbo">广播</a></span></div>
                <div class="box_content193 tg_left">
                    证监会通报对家上通报证监会与发布《中国证监会行政监会通报对上家痛...<br />2014-10-16
                </div>
           </div>
        <div class="box395 bottom_395">
                <div class="box_title"><span class="box_title_txt">会计实务所业务收入</span><span class="box_title_icon"><a href="" class="xiugai">修改</a><a href="" class="shuaxin">刷新</a></span></div>
                <div class="box_content395"><a href="duoweifenxitu.html"><img src="<%=basePath%>styles/skin-default/standard/images/sheet7.gif" width="378" height="188" alt="7" title="erewr"/></a></div>
        </div>
        <div class="box395 left_bottom_395">
                <div class="box_title"><span class="box_title_txt">年度报表统计率</span><span class="box_title_icon"><a href="" class="xiugai">修改</a></span></div>
                <div class="box_content395"><img src="<%=basePath%>styles/skin-default/standard/images/sheet8.gif" width="378" height="188" alt="7" /></div>
        </div>
        <div class="box261">
                <div class="box_title huixian"><span class="box_title_txt icon_list">任务管理</span><span class="box_title_icon"><a href="" class="xiugai">修改</a></span></div>
                <div class="box_content261">
                    <ul>
                        <li class="yuan_red2"><span class="rwgl_txt"><a href="#">金地集团的年报审计监管审计监管审计监管人物</a></span><a href="#" class="xg_icon">修改</a><a href="#" class="sc_icon">删除</a></li>
                        <li class="yuan_red2"><span class="rwgl_txt"><a href="#">大北农的年报审计监管任务</a></span><a href="#" class="xg_icon">修改</a><a href="#" class="sc_icon">删除</a></li>
                        <li class="yuan_hui2 no_line"><span class="rwgl_txt"><a href="#">新希望的年报审计监管</a></span><a href="#" class="xg_icon">修改</a><a href="#" class="sc_icon">删除</a></li>
                    </ul>
                </div>
        </div>
        <div class="box261 left_right_261">
                <div class="box_title huixian"><span class="box_title_txt icon_list">最新线索</span><span class="box_title_icon"><a href="" class="shuaxin">刷新</a></span></div>
                <div class="box_content2611">
                    <ul>
                        <li><span class="zxxs_pic"><img src="<%=basePath%>styles/skin-default/standard/images/pic1.jpg" width="41" height="41" alt="1" /></span><span class="zxxs_text">金地集团的年报审计监管人审计监管人审计监管人监</span><a href="#" class="sc_icon">删除</a></li>
                        <li class="no_line"><span class="zxxs_pic"><img src="<%=basePath%>styles/skin-default/standard/images/pic2.jpg" width="41" height="41" alt="1" /></span><span class="zxxs_text">大北农的年报审计监管任务</span><a href="#" class="sc_icon">删除</a></li>
                    </ul>
                </div>
        </div>
        <div class="box261 huixian">
                <div class="box_title huixian"><span class="box_title_txt icon_list">审计/评估业务</span><span class="box_title_icon"><a href="" class="xiugai">修改</a></span></div>
                <div class="content_pic"><img src="<%=basePath%>styles/skin-default/standard/images/sheet9.gif" width="246" height="131" alt="9" /></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</body>
</html>
