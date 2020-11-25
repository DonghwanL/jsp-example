<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Callee</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>회사명</td>
			<td>${requestScope.company}</td>
		</tr>
		<tr>
			<td>국어</td>
			<td>${requestScope.kor}</td>
		</tr>
		<tr>
			<td>영어</td>
			<td>${requestScope.eng}</td>
		</tr>
		<tr>
			<td>수학</td>
			<td>${requestScope.math}</td>
		</tr>
		<tr>
			<td>총점</td>
			<td>${requestScope.total}</td>
		</tr>
		<tr>
			<td>가수</td>
			<td>${requestScope.singer}</td>
		</tr>
	</table>
</body>
</html>