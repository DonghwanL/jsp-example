<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oddEven</title>
</head>
<body>
	<c:set var="even" value="0" />
	<c:set var="odd" value="0" />
	
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i % 2 == 0}">
			<c:set var="even" value="${even + i}"/>
		</c:if>
		<c:if test="${i % 2 == 1}">
			<c:set var="odd" value="${odd + i}"/>
		</c:if>
	</c:forEach>
	짝수의 합 : ${even}<br>
	홀수의 합 : ${odd}<br>
</body>
</html>