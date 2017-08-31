<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Leave now</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Le styles -->
<!--<link href="assets/css/bootstrap.min.css" rel="stylesheet">-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/skin-blue.css" rel="stylesheet">
<!-- Le fav -->
<link rel="shortcut icon" href="resources/ico/favicon.png">
<style>
/* all sections are off by default */
body > section { display:none; }

body.BestSchedule           > section#BestSchedule,
body.Hotplace    > section#Hotplace,
body.Scheduleinsert    > section#Scheduleinsert,
body.Schedulemethod    > section#Schedulemethod,

/*
<li class="active"><a href="#Home">Home</a></li>
			<li><a href="#Best_Schedule">추천일정</a></li>
			<li><a href="#Hot_place">가볼만한 장소</a></li>
			<li><a href="#Schedule_insert">일정만들기</a></li>
			<li><a href="#Schedule_method">이용방법</a></li>
*/

/* nav styling */
/* nav     { background:#555; padding:10px 10px 0 10px; }
nav > a { display:inline-block; color: white; padding:4px 10px; } */

/* nav highlightion rules */
/* body.about           > nav > a[href="#about"],
body.contact-list    > nav > a[href="#contact-list"],
body.contact-details > nav > a[href="#contact-details"] { background:white; color:black; } */
</style>
</head>


<body data-target=".navbar">
<nav id="topnav" class="navbar navbar-fixed-top navbar-default" role="navigation">
<div class="container">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header" style="margin-right: 20px;">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#top-section">NOW LEAVE</a>
	</div>
	
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">

		<ul class="nav navbar-nav ">
			<li class="active"><a href="#Home">Home</a></li>
			<li><a href="#BestSchedule">추천일정</a></li>
			<li><a href="#Hotplace">가볼만한 장소</a></li>
			<li><a href="#Scheduleinsert">일정만들기</a></li>
			<li><a href="#Schedulemethod">이용방법</a></li>
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
<div id="content">

<section id="Home" src="resources/view/detail.html" style="/* background-color: blue; */ display: block;"></section>
<section id="BestSchedule" src="resources/view/insertForm.html" style="/* background-color: green; */ display: none;"></section>
<section id="Hotplace" src="resources/view/list.html" style="/* background-color: pink; */ display: none;"></section>
<section id="Scheduleinsert" src="resources/view/mypage.html" style="/* background-color: */ yellow; display: none;"></section>
<section id="Schedulemethod" src="resources/view/write.html" style="/* background-color: */ gray; display: none;"></section>
</div>





	<!-- footer -->
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">

<script src="resources/js/jquery.bxslider.min.js"></script>
<script src="resources/js/jquery.placeholder.js"></script>
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/toucheffects.js"></script>
<script src="resources/js/animations.js"></script>
<script src="resources/js/init.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="resources/js/spapp.js"></script>

<script>
	$(".nav.navbar-nav li").click(function(){
		// 사용자가 클릭한 li요소의 index 얻기
        var idx = $(this).index();
		//alert("click()"+idx);
		
		$(".nav.navbar-nav li").removeClass("active");
		$(this).addClass("active");
		//alert($(this).children().attr("href"));
		var sel = $(this).children().attr("href");
		
		$("#content section").css("display", "none");
		$(sel).css("display", "block");
		
	});
</script>

</body>
</html>