<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>

<jsp:useBean id="dao" class="tour.TourDao"></jsp:useBean>
<%@ page import="tour.Tour" %>

<%
	Tour bean = dao.getMemberById(id, name);

	String gotopage = "";
	
	if(bean == null) {
		gotopage = "LoginForm.jsp";
	} else {
		session.setAttribute("loginfo", bean);
		gotopage = "Bookinglist.jsp";
	}
	
	response.sendRedirect(gotopage);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Action</title>
</head>
<body>

</body>
</html>