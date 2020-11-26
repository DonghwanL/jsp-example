<%@ page import="java.io.File"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multiUploaded</title>
</head>
<body>
<%
	String uploadPath = "/upload";
	String realpath = application.getRealPath(uploadPath);
%>

<%
	MultipartRequest mr = (MultipartRequest)request.getAttribute("mr");
	Enumeration filelist = mr.getFileNames();
%>

<h3>파일 업로드 현황</h3>

<table border="1">
	<tr>
		<td>업로드된 파일</td>
		<td>원본 파일 이름</td>
		<td>파일 타입</td>
		<td>파일 크기</td>
		<td>그림</td>
	</tr>
	<% 
		while(filelist.hasMoreElements()) {
			String file = (String)filelist.nextElement();
			String uploadFile = mr.getFilesystemName(file);
			String originalFile = mr.getOriginalFileName(file);
			String mimeType = mr.getContentType(file);
			File myfile = mr.getFile(file);
	%>
	<tr>
		<td><%=uploadFile%></td>
		<td><%=originalFile%></td>
		<td><%=mimeType%></td>
		<td><%=myfile.length()%></td>
		<td>
		<img width="120" height="120"
		src="<%=realpath%>/<%=uploadFile%>">
		</td>
	</tr>
	<% }%>
</table>

</body>
</html>