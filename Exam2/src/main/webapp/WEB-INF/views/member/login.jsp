<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<form class="form-horizontal" method="post" action="/member/login" id="loginForm">
		<!-- 로그인을 하지 않고 들어온 경우 : 로그인할 자료를 입력을 할 수 있게 한다. -->		
		
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h2 align="left">로그인</h2>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="userid" name="userid"
						maxlength=16 placeholder="아이디를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-2">
					<input type="password" class="form-control" id="passwd" name="passwd"
						maxlength="16" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button class="btn btn-success" type="submit" id="submit">로그인</button>
					<button class="cancel btn btn-danger" type="reset">취소</button>
					<button class="btn btn-info" type="button" id="memberRegisterBtn">회원가입</button>
				</div>
			</div>
		
	</form>
</div>






<script>
$(document).ready(function() {
	// 로그인 버튼을 눌렀을 경우
	$("#submit").on("click", function() {
		if($("#userid").val() == "") {
			alert("아이디를 입력하십시오.");
			$("#userid").focus();
			return false;
		}	
		if($("#passwd").val() == "") {
			alert("비밀번호를 입력하십시오.");
			$("#passwd").focus();
			return false;
		}	
		// document.getElementById("loginForm").submit();
		//return false; 이부분은 필요없다.
	});

	// 로그아웃 버튼을 눌렀을 경우
	$("#logoutBtn").on("click", function() {
		location.href="/member/logout";
	});

	// 회원가입 버튼을 눌렀을 경우
	$("#memberRegisterBtn").on("click", function() {
		location.href="/member/register";
	});

	// 회원정보수정 버튼을 눌렀을 경우
	$("#memberUpdateBtn").on("click", function() {
		location.href="/member/memberUpdate";
	});
	
	// 회원탈퇴 버튼을 눌렀을 경우
	$("#memberDeleteBtn").on("click", function() {
		location.href="/member/memberDelete";
	});
	
})
</script>

</body>
</html>













