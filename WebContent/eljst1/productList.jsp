<%@ page import="model.Product2"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<jsp:useBean id="dao" class="model.MyDao" />

<%
	List<Product2> alldata = dao.GetList();
	// out.print("요소 개수 : " + alldata.size());
	
	session.setAttribute("abcd", alldata);
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>
	<h2>상품 목록 보기</h2>
	<table border="1">
		<tr>
			<td align="center">이름</td>
			<td align="center">수량</td>
			<td align="center">단가</td>
			<td align="center">할인율</td>
			<td align="center">판매 금액</td>
		</tr>
		
		<c:set var="total_amount" value="0" />
		
		<c:forEach items="${sessionScope.abcd}" var="product">
			<tr>
				<td align="center">${product.name}</td>
				<td align="right">
					<fmt:formatNumber pattern="00" value="${product.qty}" />
				</td>
				<td align="right">
					<fmt:formatNumber pattern="###,###" value="${product.price}" />
				</td>
				<td align="right">
					<fmt:formatNumber pattern="0.000" value="${product.discount}" />
				</td>
				<td align="right">
					<c:set var="amount" value="${product.qty * product.price * (1 - product.discount)}" />
					<fmt:formatNumber pattern="###,###.00" value="${amount}" />
				</td>
			</tr>
			<c:set var="total_amount" value="${total_amount + amount}" />
		</c:forEach>
		<tr>
			<td colspan="3" align="center">총 금액</td>
			<td colspan="2" align="center">
				<fmt:formatNumber pattern="###,###.00" value="${total_amount}" />
			</td>
		</tr>
	</table>
</body>
</html>