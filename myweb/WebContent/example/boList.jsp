<%@ page import="model.Emp"%>
<%@ page import="model.Brd" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp" %>   
    
<jsp:useBean id="dao" class="model.BrdDao" />

<%
	List<Brd> mylist = dao.SelectAll();
	out.print("데이터 개수 : " + mylist.size());
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>글 내용</th>
		</tr>
		<% for(Brd bean : mylist) { %>
		<tr>
			<td><%=bean.getNo()%></td>
			<td><%=bean.getWriter()%></td>
			<td><%=bean.getSubject()%></td>
			<td><%=bean.getContent()%></td>
		</tr>
		<% } %>
	</table>
</body>
</html>