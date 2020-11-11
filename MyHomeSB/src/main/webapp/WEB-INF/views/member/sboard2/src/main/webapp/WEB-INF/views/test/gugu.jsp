<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>구구단</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	
	<div class="container">
		<h2>구구단 결과 보기</h2><hr>
		${result}
	</div>
	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>