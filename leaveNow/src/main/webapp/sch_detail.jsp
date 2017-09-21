<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<div id="demo"></div>
<form action="sch_detail.jsp">
<!-- 배경색 -->
<div id="sch_background">


	<!-- ======================================== 메인이미지, 제목 ======================================== -->
<div class="row" id="sch_Topimg">
	<!-- 메인이미지 -->
	<img id="sch_Topimg_img" src="resources/img/jeju_1.gif">
	

	<div class="container">
	<!-- 제목 -->
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-md-offset-2">
    		<div id="mainSubject">
    			<div id="afterMainSubject" >
    				<a id="s_subject_a">${schdedule.s_subject }</a>
    			</div>
    		</div>
    	</div>
    </div>
    </div>
</div>	


<div class="container" style="margin-top: 10px;">

	<!-- ======================================== 수정하기, 회원정보 ======================================== -->
	<div class="row">
		<div class="col-md-3">
			<!-- 본인이 쓴 일정일 경우 display:block -->
			<div id="sch_update_btn" align="center" style="display: none;">
				<input type="submit" value="수정하기" >
			</div>
			<!-- 회원정보 -->
			<div id="writer_info" align="center">
			  	<img src="resources/img/avatar.jpg" id="mainprofile_img_img" class="img-circle" alt="Cinque Terre" width="100" height="100" style=" margin-top:20px; border: solid 1px #ccc;">
			  	<h3><a href="#" onclick="window.location.href='./mypage.jsp'">${email }</a></h3>
			  	<input type="hidden" name="" id="">
			</div>
		</div>
		
	<!-- ======================================== 제목, 내용, 날짜, 카테고리 ======================================== -->		
		<div class="col-md-9">
			<div class="col-md-12" id="sch_detail_content">
			
				<div id="sch_detail_subject" class="row">
					<p>${schdedule.s_subject }</p>
				</div>
				
				<div id="sch_detail_note" class="row">
					<p>${schdedule.s_content }</p>
				</div>
				
				<div id="sch_detail_category" class="row" >
					<a>여행 시작 날짜&nbsp;&nbsp;:&nbsp;&nbsp;</a> 
					<a id="sch_detail_startdate">${sdate }</a>
					<a>&nbsp;&nbsp;|&nbsp;&nbsp;</a>
					<a>여행 일 수&nbsp;&nbsp;:&nbsp;&nbsp;</a>
					<a id="sch_detail_datenum">${schdedule.s_day}</a>
					<a>&nbsp;&nbsp;|&nbsp;&nbsp;</a>
					
					<a id="sch_detail_BA">${schdedule.after}</a>
					<a>&nbsp;&nbsp;|&nbsp;&nbsp;</a>
					
					<a id="sch_detail_innerCategory">${schdedule.category}</a>
					<br>
				</div>
				
			</div>
		</div>
	</div>
	
	<!-- ======================================== 다음 지도 ======================================== -->
	<div class="row">
		<div class="col-md-offset-3 col-md-9">
			<div id="map" ></div>
		</div>
	</div>
	
	<!-- ======================================== 일정표 ======================================== -->	
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class='row'>
			</div>
			<div class="row" style=" text-align: center;" >
				<div id="sch_topbar_1" class="col-md-12">
					<i class="glyphicon glyphicon-menu-left ani_left" id="ani_left"></i>
					<a>일정표</a>
					<i class="glyphicon glyphicon-menu-right ani_right" id="ani_right"></i>
				</div>
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
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class="row" style=" text-align: center;">
				<div id="sch_topbar_2" class="col-md-12">
					<i class="glyphicon glyphicon-menu-left ani_left" id="ani_left" style="margin-top: 10px;"></i>
					<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<i class="glyphicon glyphicon-menu-right ani_right" id="ani_right" style="margin-top: 10px;"></i>
				</div>
			</div>
		</div>
	</div>
	
			
	
	</div><!-- container end-->

</div><!-- end -->
</form>


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/underscore.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4ed0ef3ccb8671cd6e217b1b7062a85"></script>
<script>
//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(4).addClass("active");


/* ==================================== 지도 ==================================== */
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};
var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴



/* ==================================== 일정표 ==================================== */

$tableCreate=function(day,date){
	
	var pppp=date;	

	if(day < 4){
		$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
				+"<table class='table'><thead class='thead-inverse'>"
				+"<tr class='tIndex'><th colspan='2'>"+day+"일 day["+pppp+"]</th></tr></thead><tbody>"
				+trCreate(day,pppp)
				+"</tbody><tfoot></tfoot></table></div></div></div></div>");
		
	}
	else{
		$("#table-test").append("<div class='col-md-4' style='display:none;'><div class='row'><div class='col-md-12'><div class='row'>"
				+"<table class='table'><thead class='thead-inverse'>"
				+"<tr class='tIndex'><th colspan='2'>"+day+"일 day["+pppp+"]</th></tr></thead><tbody>"
				+trCreate(day,pppp)
				+"</tbody><tfoot></tfoot></table></div></div></div></div>");		
	}
};

function trCreate(day,date){
	var tbody="";
	var time=0;

	for(var i=1; i <= 49;i++){
		var min=0;
		
		date=date.replaceAll("-","");
		
		if(i%2==0){
			min+=30;
			//var timeRow=leadingZeros(time, 2)+":"+leadingZeros(min, 2);
			var timeRow=leadingZeros(time, 2)+leadingZeros(min, 2);
			tbody+=
			("<tr ><th class='col-md-1' >"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					+"<td id=t"+date+timeRow+" class='col-md-3 daytime' style='text-align: center;padding:0;'></i></td></tr>");
			time+=1;
		}
		else{
			//var timeRow=leadingZeros(time, 2)+":"+leadingZeros(min, 2);
			var timeRow=leadingZeros(time, 2)+leadingZeros(min, 2);
			tbody=tbody+("<tr><th class='col-md-1'>"
					+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
					+"<td id=t"+date+timeRow+" class='col-md-3 daytime' style='text-align: center;padding:0;'></i></td></tr>");
		}
		
	}
	return tbody;
};

function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (var i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
}

Date.prototype.format = function() {
	  var mm = this.getMonth() + 1; // getMonth() is zero-based
	  var dd = this.getDate();

	  return [this.getFullYear(),
	          (mm>9 ? '-' : '0') + mm,
	          (dd>9 ? '' : '0') + dd
	         ].join('-');
	};
	
$(document).ready(function(){
	var now= "${sdate }";
	
	var acountDate=new Date(now.toString());
	var index="${schdedule.s_day}";
	for(var i=1;i<=index;i++){
		
		$tableCreate(i,acountDate.format("yy_mm_dd"));
		acountDate.setDate(acountDate.getDate()+1);
		
		if(i==index){
			createCon();
		}
	}
	
	
	$(".ani_left").on("click",function(){
		 $slide_left(index); 
	});
	
	$(".ani_right").on("click",function(){
		 $slide_right(index);
	});
	
	
	
	
	test();
	

});

var s_id="${schdedule.s_id}";

function createCon(){
	$.ajax({
		url:"getCon?s_id="+s_id,
		dataType: 'json',
		success:function(data){
			console.log(data);
			
			
			/* 
			for(var i=0;i<data.length;i++){
				$("#"+data[i].start_time).append(data[i].gcode);
				console.log(data[i]);
				console.log($("#"+data[i].start_time));
				$("#"+data[i].start_time).text(data[i].gcode);
			}
			 */
			 $.each(data,function(){
				 
				 //console.log(this.start_time);
				 
				 //console.log($("#"+this.start_time));
				 var demo = this.start_time;
				 demo = demo.replaceAll("-","");
				 demo = demo.replaceAll(":","");
				 demo= "#t"+demo;
				console.log(demo);
				 //$(".daytime").append("하이");
				 $(demo).append(this.gcode);
				 
			 });
		}
	});
}

function test(){
	$("#table-test").on("click",function(){
		
		console.log($("#table-test").find("th"));
	});
}

String.prototype.replaceAll = function(org, dest) {
    return this.split(org).join(dest);
}


</script>
<%@ include file="footer.jsp" %>