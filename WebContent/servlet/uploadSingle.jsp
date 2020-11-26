<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String contextPath = request.getContextPath() ;

	//이미지 업로드 폴더가 upload라고 가정
	String uploadPath = "/upload/"; //웹 서버의 이미지를 올릴 경로
	String url = request.getRequestURL().toString();
	String uri = request.getRequestURI();
	
	int idx = url.indexOf(uri);
	String uploadedFolder = url.substring(0, idx) + contextPath + uploadPath;
	
	out.print( "url=" + url + "<br>" );
	out.print( "uri=" + uri + "<br>" );
	out.print( "uploadedFolder=" + uploadedFolder + "<br>" );
	
	String realPath = application.getRealPath( uploadPath );
	
	out.print( "realPath=" + realPath + "<br>" );
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadSingle</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/uploadSingle.do"
	method="post"
	enctype="multipart/form-data">
		글쓴이 : <input type="text" name="name" value="홍길동"><br>
		제목 : <input type="text" name="title" value="배고파"><br>
		파일 선택 : <input type="file" name="uploadFile"><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>