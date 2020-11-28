<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询结果</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToQuery.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>查询成功</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png"><br>
		<table border="1">
			<tr>
				<td>工号</td>
				<td>姓名</td>
				<td>职位</td>
				<td>电话</td>
				<td>电子邮箱</td>
				<td><input type="button" onClick="exit()" value="退出"></td>
			</tr>
			<c:forEach items="${requestScope.managers}" var="manager">
				<tr>
					<td>${manager.getUserId()}</td>
					<td>${manager.getUserName()}</td>
					<td>${manager.getRole()}</td>
					<td>${manager.getTel()}</td>
					<td>${manager.getEmail()}</td>	
				</tr>
			</c:forEach>
		<!-- 此处循环展示查询到的管理员信息 -->
		</table>
	</fieldset>
	
</body>
</html>