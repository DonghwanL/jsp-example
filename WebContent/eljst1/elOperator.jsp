<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Example</title>
</head>
<body>
	\${14 + 5} : ${14 + 5}<br>
	\${8 - 3} : ${8 - 3}<br>
	\${5 gt 10} : ${5 gt 10}<br>
	\${14 > 5 ? 14 : 5} : ${14 > 5 ? 14 : 5}<br>
	
	<%
		String input = null;
	%>
	<%=input%><br>
	\${empty input} : ${empty input}  
</body>
</html>