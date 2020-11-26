<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/gagaga" method="post">
		아이디 :
		<input type="text" name="id">
		<br><br>
		
		비밀번호 :
		<input type="password" name="password">
		<br><br>
		
		<input type="hidden" name="nickname" value="개똥이">
		
		<input type="submit" value="전송">
	</form>
</body>
</html>