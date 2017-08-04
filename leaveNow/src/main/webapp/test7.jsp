<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Leave now</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Le styles -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">	
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/skin-blue.css" rel="stylesheet">
<!-- Le fav -->
<link rel="shortcut icon" href="resources/ico/favicon.png">
<style type="text/css">
	div.outer {
		
		overflow: visible;
		width: 100%;
		height: 35px;
		border: 1px solid red;
		position: relative;
		background-color: red;
	}

	div.inner
	{
		width: 100%;
		height: 30px;
		background-color: red;
		position: relative;
	}

	td{
		vertical-align: top;
		position: relative;
		z-index: -1;
	}
	
	div.ui-resizable-s{
		background-color: gray;
		z-index: 4;
		position: relative;
		height: 5px;
	}
</style>
</head>

<body data-spy="scroll" data-target=".navbar">
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
<section>
	<div class="menu_bar">
	</div>
	
	<div class="container" >

	<div class="row">
		
		<div class="col-md-2" id="searchForm" style="background-color: yellow; height: 100px; ">
		<!-- 장소 검색 -->
			<div id="drag1" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content1</div></div>
			<div id="drag2" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content2</div></div>
			<div id="drag3" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content3</div></div>
		</div>
		<div class="col-md-9 col-md-offset-1" style="background-color: red; height: 300px;"> 
				<!--  다음 지도 -->
		</div>

	</div>
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class='row'>
				<!-- 여행일정 작성 옵션 -->
				<input type="number" id="num-day" style="margin-bottom: 0;"/><input type="button" value="입력" id="dayInput"/>
			</div>
			
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class="row" id="table-test">
			<!-- 여행일정표 -->
			</div> 
		</div>
	</div>
	</div><!-- container end-->
</section><!-- section end -->

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
<!-- <script src="resources/js/jquery.min.js" type="text/javascript"></script>  -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

<script>
function allowDrop(ev) {
    ev.preventDefault();
    //console.log("all");
    
}
//집을 때
function drag(ev) {
	ev.dataTransfer.setData("content", ev.target.id);
   	console.log("drag");
}

function dragDiv(ev) {
	
    ev.dataTransfer.setData("content", ev.target.id);
   	console.log("dragDiv");
}

//검색된 결과를 복사하여서 붙이기
function drop(ev) {
    
    var data = ev.dataTransfer.getData("content");
   	console.log("data id:"+data);
    console.log("drop");
    console.log(ev.target.id);
    
    var $target=$("#"+ev.target.id);
   
    
    //1. 일정에 기록된 장소가 아닌 경우
   	if(!data.includes("_")){
   		console.log("drop측정:"+data.includes("drag"));
   		var nodeCopy = document.getElementById(data).cloneNode(true);
   	    
   		nodeCopy.id=data+"_"+ev.target.id;
   	    //console.log("target-index:"+ev.target.index);
   	    ev.target.appendChild(nodeCopy);
   	 	//$("#"+nodeCopy.id).css("background","blue").css("z-index","1").css("postion","absolute").height("100%");
   	 	//$("#"+nodeCopy.id).css("background","blue").height($($target).height());
   	 	
   	 	
   	 	
   	 	//$("#"+nodeCopy.id).css("resize","vertical").css("overflow","auto");
   	 	$("#"+nodeCopy.id).css("z-index","1");//.css( $($target).height());
   	 	var $inner=$("#"+nodeCopy.id).children();
   	    $inner.css("resize","vertical").css("overflow","overlay").css("z-index","4");
   	    
   	    $inner.on("mouseup ",function(){
   	    	alert("wow");
   	    	var $height=$(this).height();
   	    	var xxx= Math.floor($height/38);
   	    	
   	    	console.log($(this).height());
   	    	console.log(xxx);
   	    	$(this).height((xxx+1)*38);
   	    	
   	    	
   	    });
   	    
   	 	//$inner.resizable();
   	 	//$("#"+nodeCopy.id).attr("class");
   	 	
   	    //$("#"+nodeCopy.id).append("<hr id='middle' />");
   	    //$("#middle").css("cursor","n-resize").css("z-index","2").css("background-color","gray").css("border","solid 10px red");
   	}
    //2. 타겟에 div가 존재하는 경우(구현 해야함)
    else if($target.find("div") == " "){
    	alert($target.find("div").text());
    	return false;
    }
   	else{
   		console.log("drop측정:"+data.includes("drag"));
   		ev.target.appendChild(document.getElementById(data));
   	}
   	

}

function dropDiv(ev){
	 
	 var data = ev.dataTransfer.getData("content");
	 console.log("dropDiv");
	 ev.target.appendChild(document.getElementById(data));
}

//24시 테이블 줄 작성
function trCreate(day){
	var tbody="";
	var time=0;
	
	for(var i=1; i <= 49;i++){
		var min=0;
		
		if(i%2==0){
			min+=30;
			tbody+=
			("<tr ><th class='col-md-1' >"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					+"<td id="+day+"_"+i+" class='col-md-3' ondrop='drop(event)' ondragover='return false;' style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none'></i></td></tr>");
			time+=1;
		}
		else{
			tbody=tbody+("<tr><th class='col-md-1'>"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					+"<td id="+day+"_"+i+" class='col-md-3' ondrop='drop(event)' ondragover='return false;' style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none; '></i></td></tr>");
		}
		
	}
	return tbody;
}
/*
 * 숫자 자릿수 맛추기
 */
function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (var i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}

	
$tableCreate=function(day){
	
		$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
				+"<table class='table'><thead class='thead-inverse'>"
				+"<tr><th colspan='2'>"+day+"일 day</th></tr></thead><tbody>"
				+trCreate(day)
				+"</tbody></table></div></div></div></div>");		
	
};

//일수 만큼 테이블 생성
$("#dayInput").click(function(){
	var index=$("#num-day").val();
	
	//기존 테이블 삭제
	$("#table-test > div").remove(); 
	
	//일수 마다 테이블 생성
	for(var i=1;i<=index;i++){
		$tableCreate(i);
	}
	
	
	//테이블 생성 후에 이벤트 부여
	//마우스오버(동적 생성이기 때문에 on 이벤트로 직접 설정해야한다.)
	$("table").on("mouseover","td",function(){
		
		//$(this).children("i").show().css("z-index","1").css("postion","absolute");
			
			
	}).on("mouseout","td",function(){
		$(this).children("i").hide();
	});
	//아이콘에 창 띠우기 만들기
	$("table").on("click","i",function(){
		
		
	});
});

/* $("#num-day").bind('keyup',function(){
	
	var index=$("#num-day").val();
	
	$("#table-test > div").remove(); 
	for(var i=0;i<index;i++){
		$table1();
	}
});	 */	


$(document).ready(function() { 
	/* 
	 $("div.inner").resizable({
  	 	 handles : 's'	,
	  	 
	       stop:function(event,ui){
	        console.log(ui);
	        alert(event.target.id);
	    	}
	 }); 
	 */
});

</script>

</body>
</html>