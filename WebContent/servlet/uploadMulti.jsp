<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadMulti</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/uploadMulti.do"
	method="post"
	enctype="multipart/form-data">
	
		파일 01 : <input type="file" name="uploadFile01"><br>
		파일 02 : <input type="file" name="uploadFile02"><br>
		파일 03 : <input type="file" name="uploadFile03"><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>