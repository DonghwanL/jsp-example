<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%
 	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="bean" class="tour.Tour" />
<jsp:useBean id="dao" class="tour.TourDao" />
<jsp:setProperty property="*" name="bean"/>

<% 
	String result = "";
	int cnt = -1; // failure
	cnt = dao.Insert(bean);
	
	if(cnt == 1) {
		result = "예약이 완료 되었습니다.";
	} else {
		result = "예약에 실패 하였습니다.";
	}
	
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Result</title>
</head>
<body>
	결과 : <%=result%>
	
	<%
		String gotopage = "Bookinglist.jsp";
		response.sendRedirect(gotopage);
	%>
</body>
</html>