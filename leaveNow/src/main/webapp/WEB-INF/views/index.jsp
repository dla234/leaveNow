<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Leave now</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Le styles -->
<!--<link href="assets/css/bootstrap.min.css" rel="stylesheet">-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">	
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/skin-blue.css" rel="stylesheet">
<!-- Le fav -->
<link rel="shortcut icon" href="resources/ico/favicon.png">
</head>



<!-- ============================= /header ============================= -->

<body data-spy="scroll" data-target=".navbar">
	<nav id="topnav" class="navbar navbar-fixed-top navbar-default"
		role="navigation">
		<div class="container">
		
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header" style="margin-right: 20px;">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				
				<!-- top_logo -->
				<a class="navbar-brand" href="#top-section">LEAVE NOW</a>
			</div>
			
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<!-- top_right_menu -->
				<ul class="nav navbar-nav ">
					<li class="active"><a href="#top-section">Home</a></li>
					<li><a href="#Section-2">추천일정</a></li>
					<li><a href="#Section-3">가볼만한 장소</a></li>
					<li><a href="#Schedule_insert">일정만들기</a></li>
					<li><a href="#Schedule_method">이용방법</a></li>
				</ul>
				
				<!-- top_left_menu -->
				<div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
				
					 <!--  login_before -->
					<ul class="nav navbar-nav ">
						<li><a data-toggle="modal" data-target="#signup_modal"
							href="#"><i class="glyphicon glyphicon-user"></i> Sign Up</a></li>
						<li><a data-toggle="modal" data-target="#login_modal"
							href="#"><span class="glyphicon glyphicon-log-in"></span>
								 Login</a></li>
					</ul>
					
					  
					  
    					
    					
    					 
    					
					 <!-- Search -->
					<form class="navbar-form navbar-right">
						<div class="input-group" style="margin-top: 5px;">
							<input type="text" class="form-control" placeholder="Search"></input>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit" style="width:38px; height:34px; border-radius: 3px">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>

						</div>
					
					
					<!-- login after 
					  <div class="nav navbar-nav ">
					  	<div class="dropdown" style="height: 30px;">
        					<button style=" margin-top: 2px; background-color: white; border-style: none;" type="button" class="glyphicon glyphicon-user" data-toggle="dropdown">
        					MyPage 
        					</button>
        					<ul class="dropdown-menu" style=" margin-top: 3px;">
            					<li><a href="#">My Page</a></li>
            					<li class="divider"></li>
            					<li><a href="#">내가만든일정</a></li>
            					<li><a href="#">북마크</a></li>
            					<li class="divider"></li>
            					<li><a href="#">로그아웃</a></li>
        					</ul>
    					</div>
    				  </div> -->
    				 </form>
				</div>

		<ul class="nav navbar-nav ">
			<li class="active"><a href="#top-section">Home</a></li>
			<li><a href="#Section-2">Schedule</a></li>
		</ul>

		<div class="collapse navbar-collapse navbar-ex1-collapse navbar-right">

			<ul class="nav navbar-nav ">
				<li><a data-toggle="modal" data-target="#signup_modal" href="#"><i class="glyphicon glyphicon-user"></i>Sign Up</a></li>
				<li><a data-toggle="modal"  data-target="#login_modal" href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>

			<form class="navbar-form navbar-right">
			  <div class="input-group" style="margin-top: 5px;">
				<input type="text" class="form-control" placeholder="Search"></input>
				<div class="input-group-btn">
				  <button class="btn btn-default" type="submit">
					<i class="glyphicon glyphicon-search"></i>
				  </button>
				</div>

			  </div>
			</form>
		</div>
 
	</div>

	<!-- /.navbar-collapse -->

</div>
</nav>
<!-- HOMEPAGE -->
<header id="top-section" class="fullbg">
<div class="jumbotron">
	<div id="carousel_intro" class="carousel slide fadeing">
		<div class="carousel-inner">

			<div class="active item" id="slide_1">
				<div class="carousel-content">					
					<div class="animated fadeInDownBig">
						 <h1> 나만의 일정을 작성해보세요.</h1>
					</div>
					<br/>
					<a href="#" class="buttonyellow animated fadeInLeftBig"><i class="glyphicon glyphicon-calendar"></i>&nbsp; 여행 일정 보기</a>
					<a href="#" class="buttoncolor animated fadeInRightBig"><i class="glyphicon glyphicon-eye-open"></i>&nbsp; 여행 장소 보기</a>
					
				</div>
			</div>
			<div class="item" id="slide_2">
				<div class="carousel-content">					
					<div class="animated fadeInDownBig">
						 <h1>사이트의 이용 방법</h1>
					</div>
					<br/>
					<a href="#" class="buttoncolor animated fadeInRightBig"><i class="fa fa-link"></i>&nbsp; 이용방법</a>
					
				</div>
			</div>
			<div class="item" id="slide_3">
				<div class="carousel-content">					
					<div class="animated fadeInDownBig">
						 <h1>무엇을 쓸까?????</h1>					
					</div>
						<br/>
						<a href="#" class="buttonyellow animated fadeInLeftBig"><i class="fa fa-download"></i>&nbsp; Download Now</a>
				</div>
			</div>
		</div>
	</div>
	<button class="left carousel-control" href="#carousel_intro" data-slide="prev" data-start="opacity: 0.6; left: 0%;" data-250="opacity:0; left: 5%;">
	<i class="glyphicon glyphicon-chevron-left"></i></button>
	<button class="right carousel-control" href="#carousel_intro" data-slide="next" data-start="opacity: 0.6; right: 0%;" data-250="opacity:0; right: 5%;">
	<i class="glyphicon glyphicon-chevron-right"></i></button>
</div>
<div class="inner-top-bg">
</div>
</header>
<!-- / HOMEPAGE -->


<!-- SECTION-2(schedule) -->
<section id="Section-2" class="fullbg color-white">
<div class="section-divider">
</div>
<div class="container demo-3">
<div class="row">
	<div class="page-header text-center col-sm-12 col-lg-12 animated fade">
		<h1>Schedule</h1>
		<p class="lead">
			 다른 사람들의 여행을 구경하세요.!
		</p>
	</div>
</div>
<div class="row animated fadeInUpNow">
	<div class="col-sm-12 col-lg-12">
		<ul class="grid cs-style-4">
			<li>
			<figure>
			<div>
				<!-- <img src="http://unsplash.it/400/266?random=10" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Safari</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>
			<li>
			<figure>
			<div>
				<!-- <img src="http://unsplash.it/400/266?random=11" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Game Center</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>
			<li>
			<figure>
			<div>
			
				<!-- <img src="http://unsplash.it/400/266?random=12" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Music</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>

			<li>
			<figure>
			<div>
				<!-- <img src="http://unsplash.it/400/266?random=13" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Settings</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>

			<li>
			<figure>
			<div>
				<!-- <img src="http://unsplash.it/400/266?random=14" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Camera</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>
			<li>
			<figure>
			<div>
				<!-- <img src="http://unsplash.it/400/266?random=15" alt="premium-themes-templates"> -->
				<img src="resources/img/seoul1.jpg" alt="premium-themes-templates">
			</div>
			<figcaption>
			<h3>Phone</h3>
			<span>Wow Themes</span>
			<a href="#">Take a look</a>
			</figcaption>
			</figure>
			</li>
		</ul>
	</div>
</div>
</div>
</section>

<footer id="foot-sec">
<div class="footerdivide">
</div>
<div class="container ">
<div class="row">
	<div class="text-center color-white col-sm-12 col-lg-12">
		<ul class="social-icons">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
		</ul>
		<p>
			 © Your Website.com. Template by WowThemes.net
		</p>
		<p>
			<a href="http://www.wowthemes.net/premium-themes-templates/">Official Website</a> | <a href="http://www.wowthemes.net/support/">Theme Support</a> | <a href="http://www.wowthemes.net/frequently-asked-questions/">F.A.Q.</a>
		</p>
	</div>
</div>
</div>
</footer>

<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<!--<script src="assets/js/bootstrap.js"></script>-->
<script src="resources/js/jquery.parallax.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.localscroll-1.2.7-min.js" type="text/javascript"></script>
<script src="resources/js/jquery.scrollTo-1.4.6-min.js" type="text/javascript"></script>
<script src="resources/js/jquery.bxslider.min.js"></script>
<script src="resources/js/jquery.placeholder.js"></script>
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/toucheffects.js"></script>
<script src="resources/js/animations.js"></script>
<script src="resources/js/init.js"></script>
</body>
</html>



<!-- =========================== loginForm =========================== -->

<div class="modal fade" id="login_modal" role="dialog">
        <div class="modal-dialog modal-sm">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-size:30px">로그인</h4>
                </div>
                <div class="modal-body">

                    <form id="loginfrm" action="login.do" method="post" onsubmit="alert('성공')">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="email" type="text" class="form-control" name="email" placeholder="이메일 주소">
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="logint_submit" class="btn btn-default" data-dismiss="modal">회원가입</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">로그인</button>
                </div>
            </div>

        </div>
    </div>

<!-- =========================== SignUpForm  =========================== -->

 <div class="modal fade" id="signup_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-size: 30px; ">회원가입</h4>
                </div>
                <div class="modal-body">


                        <!--<div class="col-md-6 col-md-offset-3">-->
                            <form role="form">
                                <div class="form-group">
                                    <label for="InputEmail">이메일 주소</label>
                                    <div class="input-group">
                                        <input class="form-control" id="InputEmail" type="email" placeholder="이메일 주소">
                                        <span class="input-group-btn">
                                        <button class="btn btn-success" type="button" style="border-radius:3px">메일인증<i class="fa fa-edit spaceLeft"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputPassword1">비밀번호</label>
                                    <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호">
                                </div>
                                <div class="form-group">
                                    <label for="InputPassword2">비밀번호 확인</label>
                                    <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
                                    <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
                                </div>
                                <div class="form-group">
                                    <label for="username">이름</label>
                                    <input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요">
                                </div>




                                <div class="form-group">
                                    <label>약관 동의</label>
                                    <div data-toggle="buttons">
                                        <label class="btn btn-primary active">
                                            <span class="fa fa-check"></span>
                                            <input id="agree" type="checkbox" autocomplete="off" checked>
                                        </label>
                                        <a href="#" data-toggle="collapse" data-target="#demo" >이용약관</a>에 동의합니다.
                                        <div id="demo" class="collapse">
                                        	<div class="col-xs-12">
                                        		<br>
                                                <textarea style="background-color: white; resize: none" rows="5" class="form-control" id="TextArea" readonly>
                                                    ~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~
                                                </textarea>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        <!--</div>-->


                <div class="modal-footer">
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-info" style="border-radius:3px">회원가입<i class="fa fa-check spaceLeft"></i></button>
                        <button type="button" class="btn btn-warning" data-dismiss="modal" style="border-radius:3px">가입취소<i class="fa fa-times spaceLeft" ></i></button>
                    </div>

                </div>
            </div>

        </div>
    </div>















