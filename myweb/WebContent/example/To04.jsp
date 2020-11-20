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
	String result = "";
	int cnt = -1;
	cnt = dao.Insert2(bean);
	
	if(cnt == 1) {
		result = "성공";
	} else {
		result = "실패";
	}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form04 Action</title>
</head>
<body>
	결과 : <%=result %>
	<%
		String gotopage = "list.jsp";
		response.sendRedirect(gotopage);
	%>
</body>
</html>