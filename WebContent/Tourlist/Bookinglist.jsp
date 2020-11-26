<%@ page import="java.util.List"%>
<%@ page import="tour.Tour" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="dao" class="tour.TourDao" /> 


<%
	String who = null;
	Tour loginfo = (Tour)session.getAttribute("loginfo");

	if(loginfo == null) {
		who = "로그인 되지 않았습니다.";
	} else {
		who = loginfo.getName() + "님";
	}

out.print(who);

%>
 
<%
	List<Tour> mylist =  dao.SelectAll();
	out.print("데이터 개수 : " + mylist.size());
%>
 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>이름</th>
			<th>성별</th>
			<th>나이</th>
			<th>등급</th>
			<th>여행지</th>
			<th>예약금</th>
			<th>예약 상태</th>
			<th>예약 일자</th>
		</tr>
		<% for(Tour bean : mylist) {%>
			<tr>
				<td><%=bean.getId()%></td>
				<td><%=bean.getName()%></td>
				<td><%=bean.getGender()%></td>
				<td><%=bean.getAge()%></td>
				<td><%=bean.getGrade()%></td>
				<td><%=bean.gettPlace()%></td>
				<td><%=bean.getAmount()%></td>
				<td><%=bean.getbState()%></td>
				<td><%=bean.getbDate()%></td>
			</tr>
		<% } %>
	</table>
</body>
</html>