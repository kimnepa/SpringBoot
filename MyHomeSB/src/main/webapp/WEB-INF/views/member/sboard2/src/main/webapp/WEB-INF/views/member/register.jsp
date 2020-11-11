<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<layoutTag:layout>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<div class="container">

	<h1>회원 등록하기</h1><hr>
	<form class="form-horizontal" action="/member/register" method="post">
		<div class="form-group">
			<label class="control-label col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input type="text" id="id" name="id" class="form-control" maxlength=16 placeholder="ID를 입력하세요."/>
			</div>
			<div class="col-sm-2">
				<button class="idCheck" type="button" id="idCheck" onclick="fn_idCheck();" value="N">중복검사</button>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="password" id="passwd" name="passwd" class="form-control" placeholder="PW를 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">이  름</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" maxlength=16 placeholder="이름을 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">전화번호</label>
			<div class="col-sm-3">
				<input type="text" id="tel" name="tel" class="form-control" maxlength=16 placeholder="전화번호를 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">주  소</label>
			<div class="col-sm-5">
				<input type="text" id="address" name="address" class="form-control" placeholder="주소를 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<button type="submit" class="btn btn-success">회원가입</button>
				<button type="button" class="btn btn-warning cancel">취소</button>
			</div>
		</div>
	</form>
</div>	
	<%@ include file="../include/footer.jsp" %>
	
	<script>
		$(document).ready(function() {
			// 취소 버튼이 눌렸을 경우
			$(".cancel").on("click", function() {
				location.href ="/member/login";
			});
		});

		//회원가입 버튼을 눌렀을 경우 => 입력필드가 비어있는지 검사한다.
		$("#submit").on("click", function() {
			if($("#id").val() == "") {
				alert("아이디를 입력하십시오.");
				$("#id").focus();
				return false;
			}
			if($("#passwd").val() == "") {
				alert("비밀번호를 입력하십시오.");
				$("#passwd").focus();
				return false;
			}
			if($("#name").val() == "") {
				alert("이름을 입력하십시오.");
				$("#name").focus();
				return false;
			}
			if($("#tel").val() == "") {
				alert("전화번호를 입력하십시오.");
				$("#tel").focus();
				return false;
			}
			if($("#address").val() == "") {
				alert("주소를 입력하십시오.");
				$("#address").focus();
				return false;
			}
		});
	</script>
</body>
</html>
</layoutTag:layout>












