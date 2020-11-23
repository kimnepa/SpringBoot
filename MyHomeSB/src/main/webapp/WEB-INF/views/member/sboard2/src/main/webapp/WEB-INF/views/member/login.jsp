<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 로그인 메인</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<div class="container">

	<h1>로그인하기</h1><hr>
	<form class="form-horizontal" action="/member/register" method="post">
		<div class="createForm">
			<label>아이디</label>
			<input type="text" name="id" class="createForm" placeholder="ID를 입력하세요."/>
		</div>
		<div class="createForm">
			<label>비밀번호</label>
			<input type="password" name="passwd" class="createForm" placeholder="PW를 입력하세요."/>
		</div>
		<div class="Formfooter">
			<button type="submit" class="btn btn-info">로그인</button>
		</div>
	</form>
</div>	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>












