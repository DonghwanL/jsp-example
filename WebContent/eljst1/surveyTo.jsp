<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	request.setCharacterEncoding("UTF-8");
%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SurveyTo</title>
</head>
<body>
	이름 : <c:out value="${param.name}"></c:out><br>
	인사 : 
		<c:choose>
			<c:when test="${param.greeting == 0}">
				처음 뵙겠습니다.<br>
			</c:when>
			<c:when test="${param.greeting == 1}">
				반갑습니다.<br>
			</c:when>
			<c:otherwise>
				누구 십니까?<br>
			</c:otherwise>
		</c:choose>
	
	과일 : 좋아하는 과일은
		<c:choose>
			<c:when test="${param.fruit == 1}">
				사과
			</c:when>
			<c:when test="${param.fruit == 2}">
				메론
			</c:when>
			<c:otherwise>
				바나나
			</c:otherwise>
		</c:choose>
		이군요.<br>
</body>
</html>