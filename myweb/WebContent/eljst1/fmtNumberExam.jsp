<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setAttribute("price", 1250000); // 단가
	request.setAttribute("discount", 0.35); // 할인율
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmtNumberExam</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>단가</td>
			<td><%=request.getAttribute("price")%></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><%=request.getAttribute("discount")%></td>
		</tr>
		<tr>
			<td>단가 원본</td>
			<td><fmt:formatNumber type="number" value="${price}" /></td>
		</tr>
		<tr>
			<td>할인율 원본</td>
			<td><fmt:formatNumber type="number" value="${discount}" /></td>
		</tr>
		<tr>
			<td>할인율 퍼센트</td>
			<td><fmt:formatNumber type="percent" value="${discount}" /></td>
		</tr>
		<tr>
			<td>판매가</td>
			<td><fmt:formatNumber type="number" value="${price * (1 - discount)}" /></td>
		</tr>
		<tr>
			<td>할인된 금액</td>
			<td><fmt:formatNumber type="number" value="${price * discount}" /></td>
		</tr>
		<tr>
			<td>패턴 01</td>
			<td><fmt:formatNumber pattern="##,###,###.00" value="${price}" /></td>
		</tr>
		<tr>
			<td>패턴 02</td>
			<td><fmt:formatNumber pattern="00,000,000.00" value="${price}" /></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</table>
	
	<!-- hr은 수평선을 그려주는 html 태그 -->
	<hr> 
	
	<%-- 판매가 100만원이 넘는지 체크 --%>
	<c:set var="sale" value="${price * (1 - discount)}" />
	
	<c:if test="${sale >= 1000000}">
		너무 비쌉니다.
	</c:if>
	<c:if test="${sale < 1000000}">
		저렴 합니다.
	</c:if>
	
</body>
</html>