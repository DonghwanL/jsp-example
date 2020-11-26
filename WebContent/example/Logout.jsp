<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 세션 소멸
	session.invalidate();
	
	response.sendRedirect("LoginFrom.jsp");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-out</title>
</head>
<body>

</body>
</html>