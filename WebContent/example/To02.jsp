<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	request.setCharacterEncoding("UTF-8");
%>
<%
 // 스크립트릿으로 자바 코딩이 가능
 	String id = request.getParameter("id");
 	String name = request.getParameter("name");
 	String gender = request.getParameter("gender");
 	
 	String hobby = "";
 	String[] hobbies = request.getParameterValues("hobby");
 	
 	if(hobbies == null){
 		hobby = "취미에 체크 해주세요.";
 	} else {
 		for(int i = 0; i < hobbies.length; i++) {
 			hobby += hobbies[i] + " ";
 		}
 	}
 	
 	int salary = Integer.parseInt(request.getParameter("salary"));
 	String hiredate = request.getParameter("hiredate");
 
 //	out.print("아이디 : " + id);
%>

<%@ page import="model.Emp"%>
<%@ page import="model.EmpDao"%>
<% Emp bean = new Emp();

	bean.setGender(request.getParameter("gender"));
	bean.setHiredate(request.getParameter("hiredate"));
	bean.setHobby(request.getParameter("hobby"));
	bean.setId(request.getParameter("id"));
	bean.setName(request.getParameter("name"));
	bean.setSalary(Integer.parseInt(request.getParameter("salary")));
	
 //   out.print(bean);
 
 	EmpDao dao = new EmpDao();
 	int cnt = -1; // failure
 	cnt = dao.Insert(bean);
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form02 Action</title>
</head>
<body>
	Now Arrival
</body>
</html>