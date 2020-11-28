<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/register.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/checklength.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>用户注册</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
		<form action="${pageContext.request.contextPath }/userRegister" method="post" onsubmit="return checkLength();">
		${requestScope.info}<br>
			<table>
				<tr>
					<td>学号/教职工号：</td>
					<td><input type="number" name="userId" id="userId"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
			</table><br><br><br>
				<input type="submit" value="注册">
				<input type="button" value="返回登录" onClick="login()">
		</form>
	</fieldset>
</body>
</html>