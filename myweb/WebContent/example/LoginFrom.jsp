<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-in Page</title>
</head>
<body>
	<form action="LoginTo.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input name="id" type="text"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>