<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
 
 <jsp:useBean id="bean" class="model.Emp" />
 <jsp:setProperty property="*" name="bean"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form06 Action</title>
</head>
<body>
	ID : <%=bean.getId()%><br>
	ID : ${bean.id}<br>
	이름 : ${bean.name}<br>
	성별 : ${bean.gender}<br>
	취미 : ${bean.hobby}<br>
	급여 : ${bean.salary}<br>
	입사 일자 : ${bean.hiredate}
</body>
</html>