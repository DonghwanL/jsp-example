<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Caller</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/aaa.do" method="post">
		<input type="radio" name="singer" value="1">이문세
		<input type="radio" name="singer" value="2" checked="checked">에이핑크
		<input type="radio" name="singer" value="3">여자친구
		<input type="radio" name="singer" value="4">소방차
		<br><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>