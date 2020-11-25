<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>가수</td>
			<td>${requestScope.singer}</td>
		</tr>
		<tr>
			<td>그룹</td>
			<td>${requestScope.group}</td>
		</tr>
		<tr>
			<td>회사</td>
			<td>${requestScope.company}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${requestScope.address}</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>${requestScope.hobby}</td>
		</tr>
	</table>
</body>
</html>