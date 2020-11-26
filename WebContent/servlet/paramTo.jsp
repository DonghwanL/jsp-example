<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramTo</title>
</head>
<body>
	<div align="center">
		<strong>당신이 입력한 정보 입니다.</strong>
		<hr>
		<br>
		<table border="1">
			<tr>
				<td width="30%">ID</td>
				<td align="center">${sessionScope.id}</td>
			</tr>
			<tr>
				<td width="30%">나이</td>
				<td align="center">${sessionScope.age}</td>
			</tr>
		</table>	
	</div>	
</body>
</html>