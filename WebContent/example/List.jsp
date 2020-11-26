<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.Emp" %>    
<jsp:useBean id="dao" class="model.EmpDao" />

<%
   List<Emp> mylist = dao.SelectAll();   
	out.print("데이터 개수 : " + mylist.size());
%> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>이름</th>
			<th>성별</th>
			<th>취미</th>
			<th>급여</th>
			<th>입사 일자</th>
		</tr>
		<% for(Emp bean : mylist) {%>
			<tr>
				<td><%=bean.getId()%></td>
				<td><%=bean.getName()%></td>
				<td><%=bean.getGender()%></td>
				<td><%=bean.getHobby()%></td>
				<td><%=bean.getSalary()%></td>
				<td><%=bean.getHiredate()%></td>
			</tr>
		<% } %>
	</table>
</body>
</html>