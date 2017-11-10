<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会计监管</title>
<meta content="" name="description">
<meta content="" name="keywords">
<link href="<%=basePath%>styles/skin-default/standard/css/style.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>styles/skin-default/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function returnIndex() {
        parent.window.location.href = "<%=basePath%>";
    }
    
    function returnKuaijiIndex() {
        parent.window.location.reload(true);
    }
</script>
<body style="background:none;">
<div id="header">
		<h2 id="header_text">会计监管</h2>
		<a href="#" onclick="returnIndex()" class="btn_fh_index">返回主站</a>
    <a href="#" onclick="returnKuaijiIndex()" class="btn_fh">返回首页</a>
		
</div>
</body>
</html>
