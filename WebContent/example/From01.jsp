<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Test</title>
</head>
<body style="background-color:#dcdcdc;">
	<form action="To01.jsp" method="post">
		<label for="ID">* ID</label><br>
		<input name="id" type="text" value="hong"><br><br>
		
		<label for="name">* 이름</label><br>
		<input name="name" type="text" value="홍길동"><br><br>
		
		<label for="gender">* 성별</label><br>
		<input name="gender" type="radio" value="1" checked="checked">남자
		<input name="gender" type="radio" value="2">여자
		<br><br>
		
		<label for="hobby">* 취미</label><br>
		<input name="hobby" type="checkbox" value="a" checked="checked">당구
		<input name="hobby" type="checkbox" value="b">야구
		<input name="hobby" type="checkbox" value="c">축구
		<br><br>
		
		<label for="salary">* 급여</label><br>
		<input name="salary" type="number"><br><br>
		
		<label for="hiredate">* 입사 일자</label><br>
		<input name="hiredate" type="date"><br><br>
		
		<input type="submit" value="전송">
		<input type="reset" value="초기화">
	</form>
</body>
</html>