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
			<div id="drag2" draggable="true" ondragstart="drag(event)" style="position: relative;">content</div>
		</div>
		<div class="col-md-9 col-md-offset-1" style="background-color: red; height: 300px;"> </div>

	</div>
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class='row'>
				<input type="number" id="num-day" style="margin-bottom: 0;"/>
			</div>
			
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class="row" id="table-test">
				
				<!-- <div class="col-md-4">
					<div class="row">
					
						<div class="col-md-12" >
							<table class="table" id="1day-table">
								
								<thead class="thead-inverse">
									<tr><th>1일</th></tr>
								</thead>
								<tbody >
									<tr><td class="col-md-1">00:00</td><td ondrop="drop(event)" ondragover="allowDrop(event)"><div id="drag1" draggable="true" ondragstart="drag(event)">secion</div></td>
									<tr><td >00:30</td><td ondrop="drop(event)" ondragover="allowDrop(event)"></td>
									<tr><td >01:00</td><td>1day</td>
									<tr><td >01:30</td><td>1day</td>
									<tr><td >02:00</td><td>1day</td>
									<tr><td >02:30</td><td>1day</td>
									<tr><td >03:00</td><td>1day</td>
									<tr><td >03:30</td><td>1day</td>
									<tr><td >04:00</td><td>1day</td>
									<tr><td >04:30</td><td>1day</td>
									<tr><td >05:00</td><td>1day</td>
									<tr><td >05:30</td><td>1day</td>
									<tr><td >06:00</td><td>1day</td>
									<tr><td >06:30</td><td>1day</td>
									<tr><td >07:00</td><td>1day</td>
									<tr><td >07:30</td><td>1day</td>
									<tr><td >08:00</td><td>1day</td>
									<tr><td >08:30</td><td>1day</td>
									<tr><td >09:00</td><td>1day</td>
									<tr><td >09:30</td><td>1day</td>
								</tbody>
									
							</table>
						</div>
						
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12">
							<table class="table" >
									<thead class="thead-inverse">
									<tr><th>2일</th></tr>
								</thead>
								<tbody>
									<tr><td class="col-md-1">00:00</td><td>2day</td>
									<tr><td >00:30</td><td>2day</td>
									<tr><td >01:00</td><td>2day</td>
									<tr><td >01:30</td><td>2day</td>
									<tr><td >02:00</td><td>2day</td>
									<tr><td >02:30</td><td>2day</td>
									<tr><td >03:00</td><td>2day</td>
									<tr><td >03:30</td><td>2day</td>
									<tr><td >04:00</td><td>2day</td>
									<tr><td >04:30</td><td>2day</td>
									<tr><td >05:00</td><td>2day</td>
									<tr><td >05:30</td><td>2day</td>
									<tr><td >06:00</td><td>2day</td>
									<tr><td >06:30</td><td>2day</td>
									<tr><td >07:00</td><td>2day</td>
									<tr><td >07:30</td><td>2day</td>
									<tr><td >08:00</td><td>2day</td>
									<tr><td >08:30</td><td>2day</td>
									<tr><td >09:00</td><td>2day</td>
									<tr><td >09:30</td><td>2day</td>
								</tbody>
							</table>
						</div>
						
					</div>
				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-12">
							<table class="table" >
									<thead class="thead-inverse">
									<tr><th>3일</th></tr>
									</thead>
								<tbody>
									<tr><td class="col-md-1">00:00</td><td>3day</td>
									<tr><td >00:30</td><td>3day</td>
									<tr><td >01:00</td><td>3day</td>
									<tr><td >01:30</td><td>3day</td>
									<tr><td >02:00</td><td>3day</td>
									<tr><td >02:30</td><td>3day</td>
									<tr><td >03:00</td><td>3day</td>
									<tr><td >03:30</td><td>3day</td>
									<tr><td >04:00</td><td>3day</td>
									<tr><td >04:30</td><td>3day</td>
									<tr><td >05:00</td><td>3day</td>
									<tr><td >05:30</td><td>3day</td>
									<tr><td >06:00</td><td>3day</td>
									<tr><td >06:30</td><td>3day</td>
									<tr><td >07:00</td><td>3day</td>
									<tr><td >07:30</td><td>3day</td>
									<tr><td >08:00</td><td>3day</td>
									<tr><td >08:30</td><td>3day</td>
									<tr><td >09:00</td><td>3day</td>
									<tr><td >09:30</td><td>3day</td>
								</tbody>
							</table>
						</div>
					</div>
				</div> -->
				<!-- table end -->
				
			</div> 
		</div>
	</div>
	</div><!-- container end-->
</section>







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
}

function drag(ev) {
    ev.dataTransfer.setData("content", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("content");
    //console.log(data);
    ev.target.appendChild(document.getElementById(data));
}



function test(){
	var tbody="";
	var time=0;
	
	for(var i=1; i <= 49;i++){
		var min=0;
		
		if(i%2==0){
			min+=30;
			tbody+=
			("<tr><th class='col-md-1' >"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					/* +"<td  ondrop='drop(event)' ondragover='allowDrop(event)'><div draggable='true' ondragstart='drag(event)' id="+i+">section</div></td></tr>"); */
					+"<td class='col-md-3' ondrop='drop(event)' ondragover='allowDrop(event)' onmouseover='$test()' style='text-align: center;'><i class='glyphicon glyphicon-plus'></i></td></tr>");
			time+=1;
		}
		else{
			tbody=tbody+("<tr><th class='col-md-1'>"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					/* +"<td ondrop='drop(event)' ondragover='allowDrop(event)'><div draggable='true' ondragstart='drag(event)' id="+i+">1day</div></td></tr>"); */
					+"<td class='col-md-3' ondrop='drop(event)' ondragover='allowDrop(event)' onmouseover='$test()' style='text-align: center;'><i class='glyphicon glyphicon-plus'></i></td></tr>");
		}
		
	}
	return tbody;
}

function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (var i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}


/* $("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
		+"<table class='table'><thead class='thead-inverse'>"
		+"<tr><th colspan='2'>1일 day</th></tr></thead><tbody>"
		
		 
		+test()
		 
		+"</tbody></table></div></div></div></div>");


$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
		+"<table class='table'><thead class='thead-inverse'>"
		+"<tr><th colspan='2'>1일 day</th></tr></thead><tbody>"
		
		 
		+test()
		 
		+"</tbody></table></div></div></div></div>");
		
$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
		+"<table class='table'><thead class='thead-inverse'>"
		+"<tr><th colspan='2'>1일 day</th></tr></thead><tbody>"
		
		 
		+test()
		 
		+"</tbody></table></div></div></div></div>"); */

/* var $table=$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
					+"<table class='table'><thead class='thead-inverse'>"
					+"<tr><th colspan='2'>1일 day</th></tr></thead><tbody>"
					
					 
					+test()
					 
					+"</tbody></table></div></div></div></div>"); */	
		
$table1=function(){
	
		$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
				+"<table class='table'><thead class='thead-inverse'>"
				+"<tr><th colspan='2'>1일 day</th></tr></thead><tbody>"
				+test()
				+"</tbody></table></div></div></div></div>");		
	
};
	


$("#num-day").bind('keyup',function(){
	//alert($("#num-day").val());
	var index=$("#num-day").val();
	
	$("#table-test > div").remove(); 
	for(var i=0;i<index;i++){
		$table1();
	}
});		

$test=function(){
	//console.log("test");
	
}
		
$(document).ready(function() { 
	//$table;
	
	//console.log($tbody);
});


</script>
<i class='glyphicon glyphicon-plus' style="display: none; "></i>
<table>
<tr style="text-align: center;">

</tr>
</table>
</body>
</html>