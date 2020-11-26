<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramTest</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/PServlet" method="post">
		아이디 :
		<input type="text" name="id">
		<br><br>
		
		나이 :
		<input type="number" name="age">
		<br><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>