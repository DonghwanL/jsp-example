<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To</title>
</head>
<body>
	<h2>목록</h2>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>재고</td>
			<td>단가</td>
			<td>분류</td>
		</tr>
		<c:forEach items="${sessionScope.xxx}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.stock}</td>
				<td>${product.price}</td>
				<td>${product.category}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>