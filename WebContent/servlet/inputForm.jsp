<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/hohoho" method="post">
		성별 : 
		<input type="radio" name="gender" value="남자" checked="checked">남자
		<input type="radio" name="gender" value="여자">여자
		<br><br>
		
		관심항목 : 
		<select name="menu">
			<option value="에스프레소">에스프레소
			<option value="쥬스">쥬스
			<option value="수염차">수염차
			<option value="다방 커피">다방 커피
		</select>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>