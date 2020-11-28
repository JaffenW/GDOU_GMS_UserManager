<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>公告信息</title>
<script type="text/javascript" src="/GDOU_GMS_UserManager/resources/js/exitToIndex.js"></script>
<link href="/GDOU_GMS_UserManager/resources/css/common.css" type="text/css" rel="stylesheet">
</head>
<body>
	<fieldset>
		<legend>${sessionScope.notice.getTitle()}</legend>
		<img alt="此照片不存在" src="/GDOU_GMS_UserManager/resources/image/logo_school.png"><br>
		${sessionScope.notice.getPublishDate()}<br>
		<input type="button" value="返回" onClick="exit()"><br><br>
		${sessionScope.notice.getInfo()}
	</fieldset>
	
	
</body>
</html>