<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>${sessionScope.id}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${sessionScope.password}</td>
		</tr>
		<tr>
			<td>Nickname</td>
			<td>${sessionScope.nickname}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${sessionScope.address}</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${sessionScope.phone}</td>
		</tr>
	</table>	
</body>
</html>