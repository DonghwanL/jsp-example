<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Test 4</title>
</head>
<body style="background-color:#dcdcdc;">
	<form action="To04.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input name="id" type="text" value="hong"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" type="text" value="홍길동"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input name="gender" type="radio" value="남성" checked="checked">남성
					<input name="gender" type="radio" value="여성">여성
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input name="hobby" type="checkbox" value="당구" checked="checked">당구
					<input name="hobby" type="checkbox" value="야구">야구
					<input name="hobby" type="checkbox" value="축구">축구
				</td>
			</tr>
			<tr>
				<td>급여</td>
				<td><input name="salary" type="number" value="1234"></td>
			</tr>
			<tr>
				<td>입사 일자</td>
				<td><input name="hiredate" type="date" value="2020/11/18"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="초기화">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>