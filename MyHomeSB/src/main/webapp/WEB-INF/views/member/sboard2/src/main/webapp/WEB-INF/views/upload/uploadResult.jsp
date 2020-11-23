<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>파일올리기 결과페이지</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	
	<div class="container">
		<h2>파일이 업로드되었습니다.</h2><hr>
		<h3>파일명 : ${savedName}</h3>
	</div>
	
	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>