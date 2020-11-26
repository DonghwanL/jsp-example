<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Max To</title>
</head>
<body>
	<c:if test="${param.num1 - param.num2 >= 0}">
		${param.num1}이 큽니다.<br>
	</c:if>
	<c:if test="${param.num1 - param.num2 < 0}">
		${param.num2}이 큽니다.<br>
	</c:if>
</body>
</html>