<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex2</title>
</head>
<body>
	<c:set var="area" value="서울, 제주, 경북, 전남, 강원" scope="request" />
	<table border="1">
		<tr>
			<td>인덱스</td>
			<td>카운트</td>
			<td>순번</td>
			<td>내용</td>
		</tr>
		<c:forTokens items="${area}" delims="," varStatus="status">
			<tr>
				<td align="center">${status.index}</td>
				<td align="center">${status.count}</td>
				<td align="center">도시[${status.count}]</td>
				<td align="center">${status.current}</td>
			</tr>	
		</c:forTokens>
	</table>
</body>
</html>