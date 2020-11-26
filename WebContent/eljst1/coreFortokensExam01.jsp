<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<jsp:useBean id="dao" class="model.MyDao"/>

<%
	String mytoken1 = dao.GetToken1();
	String mytoken2 = dao.GetToken2();
	String mytoken3 = dao.GetToken3();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>coreTokens</title>
</head>
<body>
	취미 : <%=mytoken1%><br><br>
	멤버 리스트 : <%=mytoken2%><br><br>
	
	<c:forTokens var="item" items="<%=mytoken1%>" delims="," varStatus="status">
		<c:if test="${status.count % 2 == 1}">
			<input type="checkbox" name="hobby" checked="checked">${item}
		</c:if>
		
		<c:if test="${status.count % 2 == 0}">
			<input type="checkbox" name="hobby">${item}
		</c:if>
	</c:forTokens>
	<br><br>
	
	<select name ="member">
		<c:forTokens var="member" items="<%=mytoken2%>" delims=",">
			<c:if test="${member == '티파니'}">
				<option value="${member}" selected="selected">${member}
			</c:if>
			
			<c:if test="${member != '티파니'}">
				<option value="${member}">${member}
			</c:if>
		</c:forTokens>
	</select>
	
	<c:forTokens var="gender" items="<%=mytoken3%>" delims="," varStatus="status">
		<c:if test="${gender == '여성'}">
			<input type="radio" name="gender" checked="checked">${gender}
		</c:if>
		
		<c:if test="${gender != '여성'}">
			<input type="radio" name="gender">${gender}
		</c:if>
	</c:forTokens>
		
</body>
</html>