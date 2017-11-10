<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="UTF-8">
<title>导航页</title>
    <link href="<%=basePath%>styles/skin-default/standard/css/style_in.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.calendar.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.infodiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.noticediv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.multipicdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.queryresultdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.modelinfodiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.serviceinfodiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.servicepicdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.floatdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.videodiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.flashdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.windowdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.popupdiv.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.listdiv.css" />
    
    <script src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
     <script type="text/javascript" src="styles/skin-default/echarts/echarts-all.js"></script>
    <script src="<%=basePath%>styles/skin-default/formvalidator/formValidator-4.1.3.js" type="text/javascript" charset="UTF-8"></script>
    <script src="<%=basePath%>styles/skin-default/formvalidator/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.calendar.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.infodiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.noticediv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.singlepicdiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.multipicdiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.queryresultdiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.modelinfodiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.serviceinfodiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.servicepicdiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.floatdiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.videodiv.js"></script>
    <script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.flashdiv.js"></script>

<script>
$(function(){
	var $content = $(".item_list");
	var i = 1;
	var m = 1;
	var count = $content.find("li").length;
	$(".next").click(function(){
		if( !$content.is(":animated")){
			if(m<count){ m++; $content.animate({left: "-=950px"}, 600); }
		}
	});
	$(".prev").click(function(){ 
		if( !$content.is(":animated")){
			if(m>i){ m--; $content.animate({left: "+=950px"}, 600); }
		}
	});
})

//#title4
$(document).ready( function (){
	$("#title4 span").hover(function(){
		$(this).addClass("on").siblings().removeClass("on");
		var index = $("#title4 span").index( $(this) );
		$("#title4_txt li").eq(index).show().siblings("#title4_txt li").hide();
	});
});

//#title4		
$(document).ready(function(){
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
});

$(document).ready(function() {
    $('#box6').calendar({
        showAlways : true
    });
    
    $('#box5').noticediv({
        title:'通知公告',
        content:data1
   });
});
	</script>

</head>
<body>
<div class="main" id="mW">
    <div class="header">
    	<div class="logo">中国证监会中央监管平台</div>
        <div class="user_info"><span>ADMIN，您好，欢迎登陆！！</span><a href="#"><span>退出</span></a></div>
    </div>
    <div class="middle" id="scrollable">
		<a class="prev"></a>
		<div class="items">
			<ul class="item_list">
				<li>
					<div class="box box01" id="box1"><img src="<%=basePath%>styles/skin-default/standard/images/bg_03.jpg"><span>办公系统</span></div>
					<div class="box box02" id="box2"><img src="<%=basePath%>styles/skin-default/standard/images/bg_15.jpg"><span>MAIL 3</span></div>
					<div class="box box02" id="box3"><img src="<%=basePath%>styles/skin-default/standard/images/bg_17.jpg"><span>文件共享</span></div>
					<div class="box box03" id="box4">
						<div class="box_title" id="title4"><span class="on"><a href="<%=basePath%>main/">会计监管</a></span> | <span>机构监管</span> | <span>上市监管</span></div>
						<ul id="title4_txt">
							<li>
								<div class="title_left">
									<h4>代办事务（1）</h4>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
								</div>
								<div class="title_right">会计师事务所总体情况<br><br>截止当前共有40家会计师事务所注册会计师19318人
									<div><img src="<%=basePath%>styles/skin-default/standard/images/tu0.jpg"></div>
								</div>
							</li>
							<li>
								<div class="title_left">
									<h4>代办事务（2）</h4>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
								</div>
								<div class="title_right">会计师事务所总体情况<br><br>截止当前共有40家会计师事务所注册会计师19318人
									<div><img src="<%=basePath%>styles/skin-default/standard/images/tu0.jpg"></div>
								</div>
							</li>
							<li>
								<div class="title_left">
									<h4>代办事务（3）</h4>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
									<p><a href="#">04-30   证监会通报对四...</a></p>
								</div>
								<div class="title_right">会计师事务所总体情况<br><br>截止当前共有40家会计师事务所注册会计师19318人
									<div><img src="<%=basePath%>styles/skin-default/standard/images/tu0.jpg"></div>
								</div>
							</li>
						</ul>
					</div>
					<div class="box box04" id="box5">
						<div class="box_title">通知公告</div>
						<p><marquee direction="up" height="136" width="128" loop="-1" scrollamount="2" scrolldelay="10" onMouseOut="this.start()" onMouseOver="this.stop()">关于就《证券公司及基金管理公司子公司资产证券化业务管...<br><br>关于就《公开募集证券投资基金运作指引第1号——商品期货...<br><br>关于就《募集证券投资</marquee></p>
					</div>
					<div class="box box05" id="box6" style="height:200px; width:185px">
					</div>
					<div class="box box06" id="box7">
						<div class="box_title">会内动态</div>
						<div>
							<p><a href="#">04-30   证监会通报对四...</a></p>
							<p><a href="#">04-30   证监会通报对四...</a></p>
							<p><a href="#">04-30   证监会通报对四...</a></p>
							<p><a href="#">04-30   证监会通报对四...</a></p>
							<p><a href="#">04-30   证监会通报对四...</a></p>
							<p><a href="#">04-30   证监会通报对四...</a></p>
						</div>
					</div>
					<div class="box box06" id="box8">
						<div class="box_title">综合查询</div>
						<p>今日市场总体情况<br>上市公司2843家<br>上市市值28.92万亿 元<br>上证综指2022.92 点</p>
						<p>市值分布<br><img src="<%=basePath%>styles/skin-default/standard/images/zzt.gif"></p>
					</div>
					<div class="box box06" id="box9">
						<div class="box_title">行业新闻</div>
						<div class="banner">
							<ul class="slide">
								<li class="on"><a href="#" ><img src="<%=basePath%>styles/skin-default/standard/images/bg_31.jpg" /></a></li>
								<li><a href="#" ><img src="<%=basePath%> styles/skin-default/standard/images/bg_31.jpg" /></a></li>
								<li><a href="#" ><img src="<%=basePath%>styles/skin-default/standard/images/bg_31.jpg" /></a></li>
							</ul>
							<ul class="num" >
								<li class="on">1</li>
								<li>2</li>
								<li>3</li>
							</ul>
						</div>
							
						
					</div>
					<div class="box box07" id="box10"><a href="#">通讯录</a></div>
					<div class="box box07" id="box11"><a href="#">工作日志</a></div>
					<div class="box box07" id="box12"><a href="#">短信平台</a></div>
				</li>
				<li>
					<div class="box box06" id="box13">
						<div class="box_title">法律法规库查询</div>
						<a href="#">&nbsp;</a>
					</div>
					<div class="box box06" id="box14">
						<div class="box_title">专家地图</div>
						<a href="#"><img src="<%=basePath%>styles/skin-default/standard/images/bg_09.jpg"></a>
					</div>
					<div class="box box06" id="box15">
						<div class="box_title">诚信数据库查询</div>
						<a href="#">诚信数据库查询诚信<br>数据库查询</a>
					</div>
					
				</li>
				<li><a>3</a></li>
			</ul>
		</div>
		<a class="next"></a>
    </div>
    <div class="bottom">Copyright 2014-2016 All rights Reserved   版权所有中国证监会</div>
</div>
</body>
</html>