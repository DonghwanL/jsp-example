<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
    
 <%
 // 스크립트릿으로 자바 코딩이 가능
 	String id = request.getParameter("id");
 	String name = request.getParameter("name");
 	int _gender = Integer.parseInt(request.getParameter("gender"));
 	String gender = "";
 	
 	switch(_gender){
 	case 1:
 		gender = "남자";
 		break;
 	case 2:
 		gender = "여자";
 		break;
 	default:	
 	}
 	
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
 
 // out.print("아이디 : " + id);
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form01 Action</title>
</head>
<body>
	<table border="1">
		<tr>
			<td width="25%">ID</td>
			<td width="75%"><%=id%></td>
		</tr>
		<tr>
			<td width="25%">이름</td>
			<td width="75%"><%=name%></td>
		</tr>
		<tr>
			<td width="25%">성별</td>
			<td width="75%"><%=gender%></td>
		</tr>
		<tr>
			<td width="25%">취미</td>
			<td width="75%"><%=hobby%></td>
		</tr>
		<tr>
			<td width="25%">급여</td>
			<td width="75%"><%=salary%></td>
		</tr>
		<tr>
			<td width="25%">연봉</td>
			<td width="75%"><%=12 * salary%></td>
		</tr>
		<tr>
			<td width="25%">입사 일자</td>
			<td width="75%"><%=hiredate%></td>
		</tr>
	</table>
</body>
</html>