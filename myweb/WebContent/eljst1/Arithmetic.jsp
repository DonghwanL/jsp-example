<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Arithmetic</title>
</head>
<body>
	<c:set var="num1" value="14" scope="request"/>
	<c:set var="num2" value="5" scope="request"/>
	<c:set var="result" value="${num1 + num2}" scope="request"/>
	<br><br>
	${num1}과 ${num2}의 더하기는 ${result}<br>
	<br><br>
	${requestScope.num1}과 ${requestScope.num2}의 더하기는 ${requestScope.result}<br>
</body>
</html>