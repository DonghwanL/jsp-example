<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fnFunctionExam</title>
</head>
<body>
	<c:set var="str1" value="Hello Java!" />
	<c:set var="str2" value="Jav" />
	
	<table border="1">
		<tr>
			<th>항목 설명</th>
			<th>실행 결과</th>
			<th>등가의 자바</th>
		</tr>
		<tr>
			<td>문자열 길이</td>
			<td>${fn:length(str1)}</td>
			<td>문자열.length()</td>
		</tr>
		<tr>
			<td>대문자</td>
			<td>${fn:toUpperCase(str1)}</td>
			<td>문자열.toUpperCase()</td>
		</tr>
			<tr>
			<td>소문자</td>
			<td>${fn:toLowerCase(str1)}</td>
			<td>문자열.toLowerCase()</td>
		</tr>
		<tr>
			<td>[${str2}] 단어만 추출</td>
			<td>${fn:substring(str1, 6, 9)}</td>
			<td>문자열.substring(a, b)</td>
		</tr>
		<tr>
			<td>[${str2}] 단어 이후의 문자열 추출</td>
			<td>${fn:substringAfter(str1, str2)}</td>
			<td>없음</td>
		</tr>
		<tr>
			<td>[${str2}] 단어 이전의 문자열 추출</td>
			<td>${fn:substringBefore(str1, str2)}</td>
			<td>없음</td>
		</tr>
		<tr>
			<td>공백 제거</td>
			<td>${fn:trim(str1)}</td>
			<td>문자열.trim()</td>
		</tr>
		<tr>
			<td>치환 하기</td>
			<td>${fn:replace(str1, " ", "-")}</td>
			<td>문자열.replace(old, new)</td>
		</tr>
		<tr>
			<td>[${str2}]의 발견 위치</td>
			<td>${fn:indexOf(str1, str2)}</td>
			<td>문자열.indexOf()</td>
		</tr>
		<tr>
			<td>[He]라는 단어로 시작하나요?</td>
			<td>${fn:startsWith(str1, 'He')}</td>
			<td>문자열.startsWith("He")</td>
		</tr>
		<tr>
			<td>[abc]라는 단어로 끝나나요?</td>
			<td>${fn:endsWith(str1, 'abc')}</td>
			<td>문자열.endsWith("abc")</td>
		</tr>
		<tr>
			<td>[${str2}] 단어의 포함 여부</td>
			<td>${fn:contains(str1, str2)}</td>
			<td>문자열.contains(str)</td>
		</tr>
		<tr>
			<td>[${str2}] 단어의 포함 여부 (대소문자 구분 없이)</td>
			<td>${fn:containsIgnoreCase(str1, "JAV")}</td>
			<td></td>
		</tr>
	</table>
	
	<c:set var="mytoken" value="1/2/3" />
	<c:set var="array" value="${fn:split(mytoken, '/')}"/>
	<c:set var="arrlen" value="${fn:length(array)}" />
	
	<c:forEach var="i" begin="0" end="${arrlen - 1}" step="1">
		${array[i]}<br>
	</c:forEach>
	
</body>
</html>