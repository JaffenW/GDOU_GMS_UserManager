<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更行管理员角色</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToManage.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>更行管理员角色</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png"><br>
		<form action="${pageContext.request.contextPath }/alterRole" method="post">
		${requestScope.info}<br>
			账号：<input type="number" name="userId" required><br><br>
			姓名：<input type="text" name="userName"><br><br>
			职务：<select name="role">
					<option value="student">普通用户</option>
					<option value="manager">管理员</option>
				</select><br><br>
				<input type="submit" value="提交">
				<input type="button" value="退出" onClick="exit()">
		</form>
	</fieldset>
</body>
</html>