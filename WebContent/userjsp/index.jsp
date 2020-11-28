<%@page import="edu.gdou.gms.entity.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主界面</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/index.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>广东海洋大学体育馆管理系统</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png">
		${requestScope.info}<br>
		<input type="button" value="修改密码" onClick="alterPassword()">
		<input type="button" value="完善资料" onClick="completeInfo()">
		<!-- 当用户登录后查询其职位，如果不是超级管理员则隐藏用户管理选项 -->
		<%
		User user = (User)request.getSession().getAttribute("owner");
		if(user.getRole().equals("supermanager")){
			out.print("<input type='button' value='用户管理' onClick='userManage()''>");
		}
		%>	
		<input type="button" value="场地管理">
		<input type="button" value="体育赛事管理">
		<input type="button" value="器材管理">
		<input type="button" value="退出" onClick="exit()"><br><br>
		<!-- 下面是设置公共栏 -->
		公告栏<br>
		<table>
			<c:forEach items="${sessionScope.notices}" var="notice">
				<tr>
					<td><a href="${pageContext.request.contextPath }/noticeInfo/${notice.getNoticeId()}">${notice.getTitle()}</a></td>
					<td>${notice.getPublishDate()}</td>
				</tr>
			</c:forEach>
		</table>	
	</fieldset>
	
</body>
</html>