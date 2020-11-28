<%@page import="org.apache.catalina.Manager"%>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@page import="edu.gdou.gms.entity.User"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询管理员</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToManage.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>查询管理员</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
		<form action="${pageContext.request.contextPath }/queryManager" method="post">
		${requestScope.info}<br>
		工号：<input type="number" name="userId" required><br><br><br>
		姓名：<input type="text" name="userName"><br><br><br>
			<input type="submit" value="查询">
			<input type="button" value="退出" onClick="exit()">
	</form>
	</fieldset>
</body>
</html>