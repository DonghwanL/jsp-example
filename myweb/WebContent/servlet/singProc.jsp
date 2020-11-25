<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>singProc</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>파일</td>
			<td>singProc.jsp</td>
		</tr>
		<tr>
			<td>좋아하는 노래</td>
			<td>${requestScope.sing}</td>
		</tr>
		<tr>
			<td>좋아하는 그룹</td>
			<td>${requestScope.singer}</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${requestScope.id}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${requestScope.password}</td>
		</tr>
	</table>
</body>
</html>