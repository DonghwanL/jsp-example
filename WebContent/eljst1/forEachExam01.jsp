<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEachExam</title>
</head>
<body>
	<c:forEach var="cnt" begin="1" end="5" step="1">
		<font size="${cnt}">안녕하세요</font><br>
	</c:forEach>
	
	<c:set var="total" value="0"></c:set>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="total" value="${total + i}" />
	</c:forEach>
	1부터 10까지의 총합은 ${total} 입니다.
</body>
</html>