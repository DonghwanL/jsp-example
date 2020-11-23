<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%
	String[] sports = {"축구", "야구", "테니스", "농구", "탁구"};
	request.setAttribute("hohoho", sports); // 바인딩
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SportsList</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>인덱스</th>
			<th>짝홀</th>
			<th>카운터</th>
			<th>데이터</th>
		</tr>
		<c:forEach items="${requestScope.hohoho}" varStatus="abcd">
			<tr>
				<td align="center">${abcd.index}</td>
				<c:if test="${abcd.index % 2 == 0}">
					<td align="center">짝수</td>
				</c:if>
				<c:if test="${abcd.index % 2 == 1}">
					<td align="center">홀수</td>
				</c:if>
				<td align="center">${abcd.count}</td>
				<td align="center">${abcd.current}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>