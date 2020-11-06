<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>게시판</title>
</head>
<body>
	<form action="JoinPagPro.jsp" method="post">
	    <label>아이디</label>
	    <input type="text" id="userId" placeholder="아이디">
	    <label>비밀번호</label>
	    <input type="password" placeholder="비밀번호">
	    <label>비밀번호 확인</label>
	    <input type="password" placeholder="비밀번호 확인">
	    <label>사용자 이름</label>
	    <input type="text" placeholder="이름">
	    <label>사용자 주소</label>
	    <input type="text" placeholder="주소">
	    <label>휴대폰 번호</label>
	    <input type="text" placeholder="휴대폰 번호">
	    <label>회사 번호</label>
	    <input type="text" placeholder="회사 번호">
	    <label>팩스 번호</label>
	    <input type="text" placeholder="팩스 번호">
	    <label>회원가입동의 체크박스</label>
	    <input type="checkbox" placeholder="회원가입동의 체크박스">
	    <button type="submit">가입</button>
	    <button type="submit">가입취소</button>
	
	</form>
</body>
</html>