<%@ page import="model.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	String who = null;
	Emp loginfo = (Emp)session.getAttribute("loginfo");
	
	if(loginfo == null) {
		who = "로그인 되지 않았습니다.";
	} else {
		who = loginfo.getName() + "님";
	}
	
	out.print(who);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Common</title>
</head>
<body>

</body>
</html>