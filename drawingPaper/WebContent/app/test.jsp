<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="#" id="frm">
	<c:choose>
		<c:when test="${not empty sessionScope.userNo}">
			<p>${sessionScope.userName}님 반갑습니다.</p>
		</c:when>
		<c:otherwise>
			<p>로그인 하세여</p>
		</c:otherwise>
	</c:choose>
	</form>

	
</body>

</html>