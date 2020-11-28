<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/checklength.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/login.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>用户登录</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
	<form action="${pageContext.request.contextPath }/userLogin" method="post" onsubmit="return checkLength();">
	${requestScope.info}<br>
		账号：<input type="number" name="userId" id="userId"><br><br><br>
		密码：<input type="password" name="password" id="password"><br><br><br>
		身份：
		普通用户<input type="radio" name="role" value="student">
		管理员<input type="radio" name="role" value="manager">
		<br><br><br>
			<input type="submit" value="登录">
			<input type="reset" value="重置">
			<input type="button" value="注册" onClick="register()">
	</form>
	</fieldset>
</body>
</html>