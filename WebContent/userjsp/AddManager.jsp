<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加管理员</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/checklength.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToManage.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>添加管理员</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
	<form action="${pageContext.request.contextPath }/addManager" method="post" onsubmit="return checkLength()">
	${requestScope.info}<br>
		账号：<input type="number" name="userId" id="userId" placeholder="必填且为4位数字"><br><br><br>
		密码：<input type="password" name="password" id="password" placeholder="必填且为6-10位字符"><br><br><br>
		姓名：<input type="text" name="userName"><br><br><br>
		电话：<input type="tel" name="tel"><br><br><br>
			<input type="submit" value="添加">
			<input type="button" value="退出" onclick="exit()">
	</form>
	</fieldset>
</body>
</html>