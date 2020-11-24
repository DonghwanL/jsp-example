<%@ page import="java.util.List"%>
<%@ page import="model.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="dao" class="model.ProductDao"/> 

<%
	List<ProductBean> items = dao.getProductList();
	session.setAttribute("xxx", items); // 바인딩
	response.sendRedirect("abcdTo.jsp"); // Redirection
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From</title>
</head>
<body>

</body>
</html>