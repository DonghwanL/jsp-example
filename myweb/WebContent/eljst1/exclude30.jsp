<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exclude</title>
</head>
<body>
	<c:set var="total" value="0" />
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:if test="${i % 5 == 0}">
			<c:if test="${i % 30 != 0}">
				<c:set var="total" value="${total + i}" />
			</c:if>
		</c:if>
	</c:forEach>
	5의 배수의 총합 : ${total}<br>
	
</body>
</html>