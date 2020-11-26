<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>singleUploaded</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>글쓴이</td>
			<td>${requestScope.name}</td>
		</tr>
		<tr>
			<td>글제목</td>
			<td>${requestScope.title}</td>
		</tr>
		<tr>
			<td>이미지</td>
			<td>${requestScope.uploadFile}</td>
		</tr>
		<tr>
			<td>경로</td>
			<td>${requestScope.realpath}</td>
		</tr>
	</table>	
	
	<img alt="abc" width="120" height="120"
	src="${requestScope.realpath}/${requestScope.uploadFile}">
		
</body>
</html>