<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="bean" class="model.Emp" />
<jsp:useBean id="dao" class="model.EmpDao" />
<jsp:setProperty property="*" name="bean"/>

<%
	String hobby = "";
	String[] hobbies = request.getParameterValues("hobby");
	
	if(hobbies == null){
		hobby = "취미에 체크 해주세요.";
	} else {
		for(int i = 0; i < hobbies.length; i++) {
			hobby += hobbies[i] + " ";
		}
	}
	bean.setHobby(hobby);
%>

<%
	int cnt = -1;
	cnt = dao.Insert(bean);
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form03 Action</title>
</head>
<body>
	Now Arrival
</body>
</html>