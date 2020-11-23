<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%
	int[] lotto = {10, 20, 30, 5, 45, 13};
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto</title>
</head>
<body>
	<c:set var="array" value="<%=lotto%>" />
	<c:forEach items="${array}" var="arr" varStatus="status">
		lotto[ ${status.index} ] = ${arr} &nbsp;&nbsp; <br>
	</c:forEach>
</body>
</html>