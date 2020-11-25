<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/hahaha" method="post">
		가수 :
		<input type="radio" name="singer" value="이효리">이효리
		<input type="radio" name="singer" value="이문세">이문세
		<input type="radio" name="singer" value="아이유" checked="checked">아이유
		<br><br>
		
		그룹명 : 
		<input type="radio" name="group" value="EXID">EXID
		<input type="radio" name="group" value="EXO">EXO
		<input type="radio" name="group" value="소녀시대" checked="checked">소녀시대
		<br><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>