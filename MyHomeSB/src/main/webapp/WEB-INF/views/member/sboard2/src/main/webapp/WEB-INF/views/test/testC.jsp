<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	<h1>testC 페이지 입니다.</h1>
	<hr>
	<h2>
		상품명 : ${map.product.name}<br>
		가 격 : ${map.product.price}
		
	</h2>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>