<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>LEAVE NOW</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/Newstyle.css?63">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	<link rel="stylesheet" href="resources/css/datepicker.css">
	
	
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4ed0ef3ccb8671cd6e217b1b7062a85"></script>

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
    
</script>



<!-- Navbar -->
<div class="w3-top">
    <div class="w3-bar w3-red w3-card-2 ">
        <!-- left -->
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-red2 w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars w3-xlarge  w3-padding w3-hover-red2"></i></a>
        <a href="Newindex.jsp" class="w3-bar-item w3-button w3-padding-large w3-red w3-xxlarge w3-hover-red2">LEAVE NOW</a>
        <a href="recommend_sch.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">추천일정</a>
        <a href="recommend_place.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">가볼만한 장소</a>
        <a href="sch_1.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">일정만들기</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium">이용방법</a>
       

        <!-- right -->
        <div class="right" align="right"  style="padding-left: 0px;">
            <a data-toggle="modal" data-target="#login_modal" href="#" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium"><i class="glyphicon glyphicon-log-in"></i> 로그인</a>
            <a data-toggle="modal" data-target="#signup_modal" href="#" class="w3-button w3-hide-small w3-padding-xlarge w3-hover-white w3-medium"><i class="glyphicon glyphicon-user"></i> 회원가입</a>
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
     
 
    
<div id="searchbar">   
  <div id="custom-search-input" style="max-width: 1400px;">
        <div class="input-group col-md-12 ">
            <input id="searchbar_input" type="text" class="form-control input-lg" placeholder="어떤 장소가 궁금하세요?" />
            <span class="input-group-btn">
                <button class="btn btn-info btn-lg" type="button">
                    <i class="glyphicon glyphicon-search"></i>
                </button>
            </span>
        </div>
    </div>  
</div>
    
    
