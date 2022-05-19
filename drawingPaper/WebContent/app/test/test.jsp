<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/project/ProjectDefaultCreateOk.pj" name="createPj">
user_no: <input type="text" name ="user_no">
pro_title: <input type="text" name ="pro_title">
pro_category: <input type="text" name ="pro_category">
pro_images: <input type="text" name ="pro_images">

<button>클릭</button>
</form>

<form method="post" action="${pageContext.request.contextPath}/project/ProjectFundingCreateOk.pj" name="Pj">
pro_goalprice: <input type="text" name ="pro_goalprice">
pro_ticketprice: <input type="text" name ="pro_ticketprice">
pro_start: <input type="text" name ="pro_start">
pro_end: <input type="text" name ="pro_end">
pro_no: <input type="text" name ="pro_no">

<button>클릭</button>
</form>

<form method="post" action="${pageContext.request.contextPath}/project/ProjectPlanCreateOk.pj" name="Pj">
pro_content: <input type="text" name ="pro_content">
pro_no: <input type="text" name ="pro_no">
<button>클릭</button>
</form>




</body>
</html>