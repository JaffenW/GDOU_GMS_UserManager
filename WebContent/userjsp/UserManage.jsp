<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户管理</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToIndex.js"></script>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/userManage.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>用户管理</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png"><br>
	<input type="button" value="添加管理员" onClick="addManager()">
	<input type="button" value="查询管理员" onClick="queryManager()">
	<input type="button" value="更新管理员角色" onClick="alterRole()">
	<input type="button" value="返回" onClick="exit()"><br><br><br>
	
	<table border="1">
		<tr>
			<td>工号</td>
			<td>姓名</td>
			<td>职位</td>
			<td>电话</td>
			<td>电子邮箱</td>
		</tr>
		<c:forEach items="${sessionScope.users}" var="user">
			<tr>
				<td>${user.getUserId()}</td>
				<td>${user.getUserName()}</td>
				<td>${user.getRole()}</td>
				<td>${user.getTel()}</td>
				<td>${user.getEmail()}</td>
				<td><a href="${pageContext.request.contextPath }/deleteManager/${user.getUserId()}">删除</a>
			</tr>
		</c:forEach>
	</table>
	</fieldset>
</body>
</html>