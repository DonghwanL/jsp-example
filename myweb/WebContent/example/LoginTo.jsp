<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>

<jsp:useBean id="dao" class="model.EmpDao" />
<%@ page import="model.Emp" %>

<%
	Emp bean = dao.getMemberById(id, name);
	String gotopage = "";
	
	if(bean == null) {
		gotopage = "LoginFrom.jsp";
	} else {
		// 로그인 성공, 세션 영역에 로그인 정보를 바인딩 후 boList.jsp로 이동
		session.setAttribute("loginfo", bean); // 세션 바인딩
		
		// boList.jsp로 이동 
		gotopage = "boList.jsp";
	}
	
	response.sendRedirect(gotopage);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Action</title>
</head>
<body>

</body>
</html>