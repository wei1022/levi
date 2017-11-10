<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<%@ include  file="includeheader.jsp"%>
<head>
<title>会计监管</title>
<meta content="" name="description">
<meta content="" name="keywords">
<script>
function iFrameHeight() { 
    var ifmleft= document.getElementById("iframeleft");
    var leftbar= $("#left_bar");
    var subWebleft = document.frames ? document.frames["iframeleft"].document : ifmleft.contentDocument; 
    if(ifmleft != null && subWebleft != null) { 
        ifmleft.height = subWebleft.body.scrollHeight;
        leftbar.css("height", ifmleft.height);
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
    <div id="left_bar"  style="overflow:hidden;">
        <iframe id="iframeleft" width="170px" frameborder="0" scrolling="no" src="<%=basePath%>redirect.do?action=left" onLoad="iFrameHeight()"></iframe>
    </div>
    <div style="width:830px;height:87px;overflow:hidden;">
        <iframe id="iframeheader" width="830px" height="100%" frameborder="0" scrolling="no" src="<%=basePath%>redirect.do?action=header"></iframe>
    </div>
    <div id="iframediv" style="width:830px;overflow:hidden;">
        <iframe id="iframepage" width="830px" height="100%" frameborder="0" scrolling="no" src="<%=basePath%>redirect.do?action=kuaiji_index" onLoad="iFrameHeight()" onclick="iFrameHeight()" ></iframe>
    </div>
</div>
</body>
</html>
