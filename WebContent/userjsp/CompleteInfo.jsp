<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/checkInfo.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToIndex.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>请完善你的信息</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
	<form action="/GDOU_GMS_UserManager/completeInfo" method="post" onsubmit="return checkInfo();">
	${requestScope.info}
		<table>
			<tr>
				<td>账号:</td>
				<td><input type="text" name="userId" readonly="readonly" value="${sessionScope.owner.getUserId()}"></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="userName" value="${sessionScope.owner.getUserName()}"></td>
			</tr>
			<tr>
				<td>电话：</td>
				<td><input type="tel" name="tel" maxlength="11" id="tel" value="${sessionScope.owner.getTel()}"></td>
			</tr>
			<tr>
				<td>身份证号码：</td>
				<td><input type="text" name="idNumber" maxlength="18" id="idNumber" value="${sessionScope.owner.getIdNumber()}"></td>
			</tr>
			<tr>
				<td>email：</td>
				<td><input type="email" name="email" value="${sessionScope.owner.getEmail()}"></td>
			</tr>
			<tr>
				<td>生日：</td>
				<td><input type="date" name="birthday" value="${sessionScope.owner.getBirthday()}"></td>
			</tr>
			<tr>
				<td>通讯地址：</td>
				<td><input type="text" name="address" value="${sessionScope.owner.getAddress()}"></td>
			</tr>
		</table>	
			<input type="submit" value="提交">
			<input type="button" value="退出" onClick="exit()">
	</form>
	</fieldset>
</body>
</html>