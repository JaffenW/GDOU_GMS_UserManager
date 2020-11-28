<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToIndex.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/alterpassword.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>修改密码</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
		<form action="${pageContext.request.contextPath }/alterPassword" method="post" onsubmit="return test();">
			${requestScope.info}
			<table>
				<tr>
					<td>账号：</td>
					<td><input type="number" readonly="readonly" name="userId" value="${sessionScope.owner.getUserId()}"></td>
				</tr>
				<tr>
					<td>旧密码：</td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
				<tr>
					<td>新密码：</td>
					<td><input type="password" name="pword" id="pw"></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" name="anotherPassword" id="anotherPassword"></td>
				</tr>
			</table>
			<br><br><br>	
				<input type="submit" value="提交">
				<input type="button" value="退出" onClick="exit()">
		</form>
	</fieldset>
	
</body>
</html>