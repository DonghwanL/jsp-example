<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exTo</title>
</head>
<body>
	<c:set var="dan" value="${param.dan}" />
	<c:forEach var="i" begin="1" end="9" step="1">
		${dan} * ${i} = ${dan * i}<br>
	</c:forEach>
</body>
</html>