<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="UTF-8">
<head>
<title>会计监管</title>
<meta content="" name="description">
<meta content="" name="keywords">
<link href="<%=basePath%>styles/skin-default/standard/css/style.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>styles/skin-default/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
<script>
function iFrameHeight() { 
    var ifmleft= document.getElementById("iframeleft");
    var leftbar= $("#left_bar");
    var subWebleft = document.frames ? document.frames["iframeleft"].document : ifmleft.contentDocument; 
    if(ifmleft != null && subWebleft != null) { 
        ifmleft.height = subWebleft.body.scrollHeight;
        leftbar.css("height", subWebleft.body.scrollHeight);
    } 
    
    var ifm= document.getElementById("iframepage");
    var ifmdiv= $("#iframediv");
    ifm.height = 0;
    ifmdiv.css("height",0);
    var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument; 
    if(ifm != null && subWeb != null) { 
        ifm.height = subWeb.body.scrollHeight;
        ifmdiv.css("height",ifm.height);
    } 
} 
</script>
</head>
<body>

<div id="home_main">
	<!-- left sidebar-->
	<div id="left_bar" style="overflow:hidden;">
		<iframe id="iframeleft" width="170px" height="750px" frameborder="0" scrolling="no" src="<%=basePath%>redirect?action=left" onLoad="iFrameHeight()"></iframe>
	</div>
    <div style="width:830px;height:87px;overflow:hidden;">
		<iframe id="iframeheader" width="830px" height="100%" frameborder="0" scrolling="no" src="<%=basePath%>redirect?action=header"></iframe>
    </div>
    <div id="iframediv" style="width:830px;overflow:hidden;">
		<iframe id="iframepage" width="830px" height="100%" frameborder="100%" scrolling="no" src="<%=basePath%>redirect?action=kuaiji_index" onLoad="iFrameHeight()" onclick="iFrameHeight()"></iframe>
    </div>
</div>
</body>
</html>
