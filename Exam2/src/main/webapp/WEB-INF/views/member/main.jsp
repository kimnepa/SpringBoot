<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MainPage</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<style>
  	
  	.navbar {
	    margin-bottom: 0;
	    background-color: #cc0066;
	    z-index: 9999;
	    border: 0;
	    font-size: 12px !important;
	    line-height: 1.42857143 !important;
	    letter-spacing: 4px;
	    border-radius: 0;
	    font-family: Montserrat, sans-serif;
  		}
  	.navbar li a, .navbar .navbar-brand {
    	color: #fff !important;
		}
	.h3 {
		color: #fff !important;
		}
	#page {
		color: #000000 !important;
		}
		.carousel-inner img {
  -webkit-filter: grayscale(90%);
  filter: grayscale(90%); /* make all photos black and white */
  width: 100%; /* Set width to 100% */
  margin: auto;
}

.carousel-caption h3 {
  color: #fff !important;
}

@media (max-width: 600px) {
  .carousel-caption {
    display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
  }
}
		
  	</style>
  	
  	
  	
</head>
<body id="myPage">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="contaner-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">HOME</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/member/login">로그인</a></li>
					<li><a href="/member/register">회원가입</a></li>
					<li><a href="#">일정</a></li>
					<li><a href="/board/boardList">게시판</a></li>
					<li><a href="#">티켓</a></li>
					<li><a href="#">STORE</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">더보기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li id="page"><a href="#" id="page">ATLETICO</a></li>
								<li id="page"><a href="#" id="page">LIVERPOOL</a></li>
								<li id="page"><a href="#" id="page">DORTMUND</a></li>
							</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="/static/images/at.jpg" alt="ATLETICO" width="1200" height="700">
        <div class="carousel-caption">
          <h3>AT</h3>
        </div>      
      </div>

      <div class="item">
        <img src="/static/images/lv.jpg" alt="LIVERPOOL" width="1200" height="700">
        <div class="carousel-caption">
          <h3>LV</h3>
        </div>      
      </div>
    
      <div class="item">
        <img src="/static/images/dr.jpg" alt="DORTMUND" width="1200" height="700">
        <div class="carousel-caption">
          <h3>DOR</h3>
        </div>      
      </div>
    </div>

    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">이전</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">다음</span>
    </a>
</div>

</body>
</html>