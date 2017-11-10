<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<%@ include  file="includeheader.jsp"%>
<head>
<title>监管措施</title>
<meta content="" name="description">
<meta content="" name="keywords">
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
