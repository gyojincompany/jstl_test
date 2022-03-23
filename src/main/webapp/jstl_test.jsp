<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="score" value="korea" /><!-- 변수 선언 -->
	변수 : <c:out value="${score }" /><!-- 변수 출력 -->
	<br>
	<c:remove var="score" /><!-- 변수 삭제 -->
	변수 : <c:out value="${score }" />
	<br>
	<c:catch var="error"><!-- 예외 처리 -->
		<%= 2/0  %>
	</c:catch>
	<br>
	<c:out value="${error }" /><!-- 에러 내용 출력 -->
	<br>
	<c:if test="${3>1}"><!-- if 조건문 '참' -->	
		안녕하세요!!!
	</c:if>
	<c:if test="${3<1}"><!-- 변수 삭제 '거짓' -->	
		반갑습니다!!!
	</c:if>
	
	<br>
	<!-- 자바for : for(int i=0;i<10;i=i+2) -->
	
	<c:forEach var="i" begin="0" end="9" step="2">
		안녕<br>
		i = ${i }<br>
	</c:forEach>
	
	
	
</body>
</html>





