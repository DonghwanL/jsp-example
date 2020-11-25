<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>singForm</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/qwert" method="post">
		당신이 좋아하는 가수는?<br><br>
		<input type="radio" name="sing" value="애원">애원
		<input type="radio" name="sing" value="노바디" checked="checked">노바디
		<input type="radio" name="sing" value="사랑">사랑
		<br><br>
	
		<select name="singer">
			<option value="빅뱅">빅뱅
			<option value="소녀시대">소녀시대
			<option value="블랙핑크">블랙핑크
			<option value="에이핑크">에이핑크
		</select>
		<br>
		
		<input type="submit" value="전송">
	</form>
	
</body>
</html>