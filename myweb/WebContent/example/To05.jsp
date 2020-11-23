<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form05 Action</title>
</head>
<body>
	파일 : To05.jsp<br>
	이전 방식<br>
	ID : <%=request.getParameter("id")%><br>
	el을 이용한 방식<br>
	ID : ${param.id}<br>
	이름 : ${param.name}<br>
	성별 : ${param.gender}<br>
	취미 : ${paramValues.hobby}<br>
	급여 : ${param.salary}<br>
	입사 일자 : ${param.hiredate}<br>
</body>
</html>