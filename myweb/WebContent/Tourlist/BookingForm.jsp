<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tour Booking</title>
</head>
<body style="background-color:#dcdcdc;">
	<form action="BookingAction.jsp" method="post">
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
				<td>나이</td>
				<td>
					<input name="age" type="number">
				</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>
					<input name="grade" type="radio" value="일반" checked="checked">일반
					<input name="grade" type="radio" value="우수">우수
					<input name="grade" type="radio" value="VIP">VIP
				</td>
			</tr>
			<tr>
				<td>여행지</td>
				<td><input name="tPlace" type="text"></td>
			</tr>
			<tr>
				<td>예약금</td>
				<td><input name="amount" type="number"></td>
			</tr>
			<tr>
				<td>예약 상태</td>
				<td>
					<input name="bState" type="radio" value="예약 대기" checked="checked">예약 대기
					<input name="bState" type="radio" value="예약 완료">예약 완료
					<input name="bState" type="radio" value="예약 취소">예약 취소
				</td>
			</tr>
			<tr>
				<td>예약 일자</td>
				<td>
					<input name="bDate" type="date" placeholder="2020/11/18">
				</td>
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