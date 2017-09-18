<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>LEAVE NOW</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/Newstyle.css?1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
        .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
        .fa-anchor,.fa-coffee {font-size:200px}

        /* slide */
        .mySlides {display:none}
        .w3-left, .w3-right, .w3-badge {cursor:pointer}
        .w3-badge {height:13px;width:13px;padding:0}


    </style>
    <title>cssEX</title>
</head>
<body>

<!-- Navbar -->
<div class="w3-top">
    <div class="w3-bar w3-red w3-card-2 ">
        <!-- left -->
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-red2 w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars w3-xlarge  w3-padding w3-hover-red2"></i></a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-red w3-xxlarge w3-hover-red2">LEAVE NOW</a>
        <a href="sch_recommend.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">추천일정</a>
        <a href="place_recommend.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">가볼만한 장소</a>
        <a href="create" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">일정만들기</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">이용방법</a>
        

        <!-- right -->
        <div class="right" align="right"  style="padding-left: 0px;">
            <c:if test="${empty sessionScope.email }">
       		 <a data-toggle="modal" data-target="#login_modal" href="#" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium"><i class="glyphicon glyphicon-log-in"></i> 로그인</a>
             <a data-toggle="modal" data-target="#signup_modal" href="#" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium"><i class="glyphicon glyphicon-user"></i> 회원가입</a>
	       	</c:if>
	        <c:if test="${not empty sessionScope.email }">
	        	<a href="mypage.jsp" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium"><i class="fa fa-user-circle-o" style="font-size:18px;"></i>&nbsp;&nbsp; ${m_name }님</a>
	        	<a href="member/logout?url=${pageContext.request.servletPath }" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">로그아웃</a>
	        </c:if>
        </div>
    </div>


    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium ">
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hover-red2">추천일정</a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hover-red2">가볼만한 장소</a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hover-red2">일정만들기</a>
        <hr>
        <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hover-red2">이용방법</a>
        <a data-toggle="modal" data-target="#login_modal" href="#" class="w3-bar-item w3-button w3-padding-large w3-hover-red2">로그인</a>
    </div>
</div>

   
<div id="navbar_back"></div>   
     
 
    
<div class="row" id="searchbar">   
  <div class="" id="custom-search-input" >
        <div class="input-group col-md-12">
            <input type="text" class="form-control input-lg" placeholder="어떤 장소가 궁금하세요?" />
            <span class="input-group-btn">
                <button class="btn btn-info btn-lg" type="button">
                    <i class="glyphicon glyphicon-search"></i>
                </button>
            </span>
        </div>
    </div>  
</div>
    
    
<div id="All_contant">
<header>
    <!-- images slide -->
    <div class="w3-content w3-display-container animate" style="max-width:1920px">
        <a href=""><img class="mySlides" src="resources/img/jeju_1.gif" style="width:100%; min-width:1210px; min-height: 300px;"></a>
        <a href=""><img class="mySlides" src="resources/img/busan_2.gif" style="width:100%; min-width:1210px; min-height: 300px;"></a>
        <a href=""><img class="mySlides" src="resources/img/seoul_3.gif" style="width:100%; min-width:1210px; min-height: 300px;"></a>
        <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
            <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
            <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
        </div>
    </div>
    
    
    <!-- search -->    
 
</header>

 
    
<!-- First content -->
<div class="w3-row-padding w3-padding-32 w3-container" style="width: auto;" >
    <div class="w3-content cont">
        <!--<div class="w3-twothird" >-->
        <div style="padding-bottom: 0px;">
            <h1 style="color: #4f4f4f">추천 일정</h1>
        </div> 
        <div id="cont_hr">
        <hr>
        </div>
        <div style="height: 350px;">   
            <div class="contant1_1">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_2" >
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_3">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_4">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_5">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        
        
        <div style="height: 340px; margin-top: 0px;">
            <div class="contant1_6">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_7" >
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_8">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_9">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_10">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            </div>
        <!--</div>-->
        <div id="more_bt_1">
          <center><a href="recommend_sch.jsp">추천 일정 더보기&nbsp;&nbsp;<i class="fa fa-arrow-right"  style="font-size:20px"></i></a></center>
        </div>
    </div>   
</div>

    
<!-- Second content -->
<div class="w3-row-padding w3-padding-32 w3-container w3-light-grey" >
    <div class="w3-content cont">
        <!--<div class="w3-twothird" >-->
        <div>
            <h1 style="color: #4f4f4f">가볼만한 장소</h1>
        </div>
        <hr style="">
        <div style="height: 350px;">   
            <div class="contant1_1">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_2" >
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_3">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_4">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_5">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        
        
        <div style="height: 340px; margin-top: 0px;">
            <div class="contant1_6">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_7" >
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_8">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_9">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="contant1_10">
                <a href="">
                    <div>
                        <div>
                            <img src="resources/img/111.jpg" width="218px" height="218px">
                        </div>
                        <div class="tit" style="padding-left: 10px;">
                            <h3>제목</h3>
                        </div>
                        <div class="id_ctg" style="padding-left: 10px;">
                            <span>아이디</span>
                            &nbsp; | &nbsp;
                            <span>카테고리</span>
                        </div>
                    </div>
                </a>
            </div>
            </div>
        <!--</div>-->
        <div id="more_bt_1">
          <center><a href="recommend_place.jsp">장소 더보기&nbsp;&nbsp;<i class="fa fa-arrow-right"  style="font-size:20px"></i></a></center>
        </div>
    </div>
</div>

</div>

    
    
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-gray">
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>




<!-- script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eebdba1d92f001c45adfbf8e887c0fa2"></script>
<script>
    // Used to toggle the menu on small screens when clicking on the menu button
    function myFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }


    /* slide */
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function currentDiv(n) {
        showDivs(slideIndex = n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) {slideIndex = 1}
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" w3-white", "");
        }
        x[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " w3-white";
    }


  

</script>


</body>
</html>



<!-- LoginForm modal  -->
<div class="modal fade" id="login_modal" role="dialog">
	<div class="modal-dialog modal-sm">

		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" style="font-size: 30px">로그인</h4>
			</div>
			<div class="modal-body">

				<form id="loginfrm" action="views/member/login" method="post" onsubmit="alert('성공')">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input id="email"
							type="text" class="form-control" name="email"
							placeholder="이메일 주소">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span> <input id="password"
							type="password" class="form-control" name="password"
							placeholder="비밀번호">
					</div>
					<br>
					<div class="col-sm-12" data-toggle="buttons" style="position: relative; padding-left: 0px;">
                                <label class="btn btn-warning active" style="border-radius: 3px">
                                    <input id="agree" type="checkbox" autocomplete="off">
                                    <span class="fa fa-check"></span>
                                </label> &nbsp; 아이디 저장하기
                    </div>
					<br>
					
				</form>
			</div>
			<div class="modal-footer"
				style="position: relative; padding-right: 75px;">
				<button type="button" id="logint_submit" class="btn btn-default"
					data-dismiss="modal" style="border-radius: 3px" data-toggle="modal"
					data-target="#signup_modal">회원가입</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="border-radius: 3px">로그인</button>
			</div>
			<div align="right"
				style="position: relative; padding-right: 15px; padding-bottom: 8px;">
				<a href="" style="color: #595959;">비밀번호 찾기</a>
			</div>
		</div>

	</div>
</div>






<!-- SignUpForm modal -->

<div class="modal fade" id="signup_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
            
                <!-- header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <div >
    	               <h1>회원가입</h1>
                    </div>
                </div>
                
               
    <!-- contant -->   
   <div>
    <div class="col-md-12">
       
        <form class="form-horizontal">
            <br>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-6">
          <div class="input-group">
                <input class="form-control" id="inputEmail" type="email" placeholder="이메일" />
                <span class="input-group-btn">
                    <button class="btn btn-success">이메일 인증<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
            </div>
            <p class="help-block">이메일을 인증해 주세요.</p>
        </div>
        </div>
          
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
            
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
             </div>
          </div>
            
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputName" type="text" placeholder="이름">
          </div>
        </div>
            
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#" data-toggle="collapse" data-target="#demo">이용약관</a> 에 동의 합니다.
            </div>
          </div>
            
            <div class="form-group" align="center">
                        <div id="demo" class="collapse">
                            <div class="col-xs-12">
                                <textarea style="background-color: white; width: 350px; resize: none"
                                          rows="5" class="form-control" id="TextArea" readonly>
~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~
                                </textarea>
                            </div>
                        </div>
            </div>
       
        </form>
         
        </div>

                <!-- footer -->
                <div class="modal-footer">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit" style="border-radius: 3px">회원가입<i class="fa fa-check spaceLeft"></i></button>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>


