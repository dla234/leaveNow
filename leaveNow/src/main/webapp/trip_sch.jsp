<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eebdba1d92f001c45adfbf8e887c0fa2"></script>


<style type="text/css">

.navbar-brand{
	color:#444;
	padding:0;
	font-size:27px;
	line-height:55px;
	font-weight:600;
	font-family:Raleway;
}

footer {
		background-color:#4ba2dc;
		width:100%;
		min-width:100%;
		position:relative;
		font-size:13px;
		padding-bottom:10px;
}


	div.outer {
		
		overflow: visible;
		width: 100%;
		height: 35px; 
		border: 1px solid red;
		position: relative;
		/* background-color: red; */
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



</style>

</head>
<body>
<!-- top -->
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
    	<button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
    		<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
    	</button>
      <a class="navbar-brand" href="#">Leave Now</a>
    </div>
    <div class="navbar-collapse collapse">
    	<ul class="nav navbar-nav">
	      <li><a href="#">Home</a></li>
	      <li><a href="#">Page 1</a></li>
	      <li><a href="#">Page 2</a></li>
	    </ul>
	    <form class="navbar-form navbar-right">
	      <div class="input-group">
	        <input type="text" class="form-control" placeholder="Search">
	        <div class="input-group-btn">
	          <button class="btn btn-default" type="submit">
	            <i class="glyphicon glyphicon-search"></i>
	          </button>
	        </div>
	      </div>
	    </form>
    </div>
  </div>
</nav>

<!-- main -->
<section>

	<div class="container" >

	<div class="row">

		<div class="col-md-2" id="searchForm" style="background-color: yellow; height: 100px; ">
		<!-- 장소 검색 폼 -->
			<div class="input-group">
		        <input type="text" class="form-control" id="keyword" placeholder="장소 검색">
		        <div class="input-group-btn">
		          <button class="btn btn-default" type="submit" id="searchbt">
		            <i class="glyphicon glyphicon-search"></i>
		          </button>
		        </div>
		      </div>
		      <!-- 장소 검색 결과 -->
		    <div id="resultKeyword"> 
		    	<div id="drag1" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content1</div></div>
				<div id="drag2" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content2</div></div>
				<div id="drag3" draggable="true" ondragstart="drag(event)" class="outer"><div class="inner">content3</div></div>
		    </div>  
			
		</div>
		<div class="col-md-9 col-md-offset-1"  id="map" style="height: 300px;"> 
				<!--  다음 지도 -->
		</div>
		
	</div>
	
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class='row'>
				<!-- 여행일정 작성 옵션 -->
				날짜: <input type="text" id="datepicker" >
				<input type="number" id="num-day" value="4" style="margin-bottom: 0;"/>
				<input type="button" value="입력" id="dayInput"/>
				<button >저장하기</button>
			</div>
			<div class="row" style=" text-align: center;">
				<div class="col-md-12" style="background-color: skyblue; height: 40px;">
					<i class="glyphicon glyphicon-menu-left" id="ani_left"></i>
					애니메이션 바
					<i class="glyphicon glyphicon-menu-right" id="ani_right"></i>
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
	
	</div><!-- container end-->
</section><!-- section end -->


<!-- footer -->
<footer id="foot-sec">
<div class="footerdivide">
</div>
<div class="container ">
<div class="row">
	<div class="text-center color-white col-sm-12 col-lg-12">
		
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


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>


function allowDrop(ev) {
    ev.preventDefault();
    //console.log("all");
    
}
//집을 때
function drag(ev) {
	ev.dataTransfer.setData("content", ev.target.id);
   	console.log("drag:"+ev.dataTransfer.getData("content"));
}

function dragDiv(ev) {
    ev.dataTransfer.setData("content", ev.target.id);
   	console.log("dragDiv:"+ev.dataTransfer.getData("content"));
}

//검색된 결과를 복사하여서 붙이기
function drop(ev) {
    
    var data = ev.dataTransfer.getData("content");
   	//console.log("data id:"+data);
    console.log("drop:"+data);
    

    var $target=$("#"+ev.target.id);
   	//console.log($target.children().html());
    var innerHeught=$target.height();
    
    
    //1. 일정에 기록된 장소가 아닌 경우
   	if(!data.includes("_")){
   		console.log("drop측정:"+data.includes("drag"));
   		var nodeCopy = document.getElementById(data).cloneNode(true);
   	    
   		nodeCopy.id=data+"_"+ev.target.id;
   	    
   	    ev.target.appendChild(nodeCopy);
   	 	
   	 	var $inner=$("#"+nodeCopy.id).children();
   	    $inner.css("resize","vertical").css("overflow","overlay").css("z-index","4");
   	    
   	    $inner.on("mouseup",function(){
   	    	//alert("wow");
   	    	console.log("높이:"+innerHeught);
   	    	var $height=$(this).height();
   	    	var xxx= Math.floor($height/innerHeught);
   	    	
   	    	console.log($(this).height());
   	    	console.log(xxx);
   	    	$(this).height((xxx+1)*innerHeught-1);
   	    	
   	    	console.log($(this).height());
   	    });
   	    $inner.append("<i class='glyphicon glyphicon-remove'></i>");
   	 	$(".glyphicon-remove").on("click",function(){
   	 		alert("삭제");
   	 	});
   	}
    //2. 타겟에 div가 존재하는 경우(구현 해야함)
    /* 
    else if(){
    	alert("wow");
    	return false;
    }
    */
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
 * 2017.08.01 임은섭
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

//일정 테이블 생성	
$tableCreate=function(day,date){
		
		var pppp=date;	

		//console.log(pppp);
		
		
		if(day < 4){
			$("#table-test").append("<div class='col-md-4'><div class='row'><div class='col-md-12'><div class='row'>"
					+"<table class='table'><thead class='thead-inverse'>"
					+"<tr><th colspan='2'>"+day+"일 day["+pppp+"]</th></tr></thead><tbody>"
					+trCreate(day)
					+"</tbody></table></div></div></div></div>");
			
		}
		else{
			$("#table-test").append("<div class='col-md-4' style='display:none;'><div class='row'><div class='col-md-12'><div class='row'>"
					+"<table class='table'><thead class='thead-inverse'>"
					+"<tr><th colspan='2'>"+day+"일 day["+pppp+"]</th></tr></thead><tbody>"
					+trCreate(day)
					+"</tbody></table></div></div></div></div>");		
		}
	
};

//일수 만큼 테이블 생성
$("#dayInput").click(function(){
	var index=$("#num-day").val();
	
	//기존 테이블 삭제
	$("#table-test > div").remove(); 
	
	//선택 날짜
	var select_date=$("#datepicker").val();
	console.log(select_date);
	
	//선택된 날짜 변환(계산을 하기 위해서)
	var acountDate=new Date(select_date);
	
	//일수 마다 테이블 생성
	for(var i=1;i<=index;i++){
		
		$tableCreate(i,acountDate.format("yy-mm-dd"));
		acountDate.setDate(acountDate.getDate()+1);
		
	}
	
	
	//테이블 생성 후에 이벤트 부여
	//마우스오버(동적 생성이기 때문에 on 이벤트로 직접 설정해야한다.)
	$iconEvent();
	/* 
	$("table").on("mouseover","td",function(){
	//console.log("mouseover:"+$(this).parent().find("div").html());
		if($(this).parent().find("div").html()===undefined){
			$(this).children("i").show().css("z-index","1").css("postion","absolute");
		}
	}).on("mouseout","td",function(){
		$(this).children("i").hide();
	});
	//아이콘에 창 띠우기 만들기
	$("table").on("click","i",function(){
		alert("생성");
	});
	 */
});

/* 
 * 2017.08.16 임은섭
 * 아이콘 생성 및 메세지 출력
 */
$iconEvent=function(){
	$("table").on("mouseover","td",function(){
		//console.log("mouseover:"+$(this).parent().find("div").html());
			if($(this).parent().find("div").html()===undefined){
				$(this).children(".glyphicon-plus").show().css("z-index","1").css("postion","absolute");
			}
		}).on("mouseout","td",function(){
			$(this).children(".glyphicon-plus").hide();
		});
		//아이콘에 창 띠우기 만들기
		$("table").on("click",".glyphicon-plus",function(){
			alert("생성");
		});
}

//다음 지도 생성
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};



//키워드로 장소를 검색합니다
//var places = new daum.maps.services.Places();
/* 
var ps = new daum.maps.services.Places(); 

var callback = function(result, status) {
    if (status === daum.maps.services.Status.OK) {
        console.log(result);
        
        $("#resultKeyword").children().remove("div");
    	console.log(result[1].place_name);
    	
        for(var i=0;i<result.length;i++){
        	$("#resultKeyword").append("<div id='drag"+i+"'" 
        			+"draggable='true' ondragstart='drag(event)'" 
        			+"class='outer'><div class='inner'>"+result[i].place_name+"</div></div>");
        }
    	
    }
};
 */

$("#searchbt").on("click",function(){
	var keyword=$("#keyword").val();
	ps.keywordSearch(keyword, callback);
	
});

/*
 * 
 * 2017.08.16 임은섭
 * 슬라이드 기능 추가 
 * 
 */

var start=0;
var end=2;

$slide_right=function(f){
	
	var max=$("#num-day").val();
	
	//console.log("siled_right:"+start);
	//console.log("siled_right:"+end);
	//console.log("siled_right:"+max);
	
	if(start != max-1){
		$("#table-test").children().eq(start).css("display","none");
		$("#table-test").children().eq(end+1).css("display","block");
		
		start=start+1;
		end=end+1;
	}
	else{
		alert("stop");
	}
};

$slide_left=function(f){
	
	var max=$("#num-day").val();
	
	//console.log("siled_left:"+start);
	//console.log("siled_left:"+end);
	//console.log("siled_left:"+max);
	
	if(start>0){
		$("#table-test").children().eq(start-1).css("display","block");
		$("#table-test").children().eq(end).css("display","none");
		start=start-1;
		end=end-1;
	}
	else if(start === 0){
		alert("stop")
	}
	
	
};
/*
 * 슬라이드 기능 끝
 */
 
/*
 * 2017.08.16 임은섭
 * 날짜 포멧 용 함수
 * 
 */
 Date.prototype.format = function() {
	  var mm = this.getMonth() + 1; // getMonth() is zero-based
	  var dd = this.getDate();

	  return [this.getFullYear(),
	          (mm>9 ? '-' : '0') + mm,
	          (dd>9 ? '' : '0') + dd
	         ].join('-');
	}; 

	
$(document).ready(function() { 
	var index=$("#num-day").val(); 
	
	
	var now = new Date().format("yy-mm-dd");
	
	var toNow=now.toString()
	//console.log("ready:"+now.toString());
	
	var nowDate=$("#datepicker").val(toNow);
	
	var acountDate=new Date(nowDate.val());
	
	for(var i=1;i<=index;i++){
		
		$tableCreate(i,acountDate.format("yy-mm-dd"));
		acountDate.setDate(acountDate.getDate()+1);
	}
	
	$("#ani_left").on("click",function(){
		 $slide_left(index); 
	});
	
	$("#ani_right").on("click",function(){
		 $slide_right(index);
	});
	
	//jquery datepicker 
	$("#datepicker").datepicker({
		showOtherMonths: true,
	    selectOtherMonths: true,
	    dateFormat: "yy-mm-dd"
	});
	
	$iconEvent();
});

</script>

</body>
</html>