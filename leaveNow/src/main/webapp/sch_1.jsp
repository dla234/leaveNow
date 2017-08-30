<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div id="sch_background">

<!-- 메인이미지 -->
<div class="row" id="sch_Topimg">
	<!-- 메인이미지 -->
	<img src="resources/img/jeju_1.gif">
	
	<!-- 메인 이미지 바꾸기 버튼 -->
	<div class="row">
		<div class="col-md-4 col-md-offset-8"">
			<div class="fileBox">
    			<input type="text" class="fileName" readonly="readonly">
    			<label for="uploadBtn" class="btn_file">이미지 바꾸기</label>
    			<input type="file" id="uploadBtn" class="uploadBtn">
			</div>
		</div>
	</div>
	<input type="hidden" name="s_subject" id="s_subject">
	<!-- 제목 -->
	<div class="row">
		<div class="col-md-offset-3 col-md-6 col-md-offset-3"">
    		<div id="mainSubject">
    			<div id="afterMainSubject" >
    				<a id="s_subject_a">메인제목</a>
    				<button class="fa fa-pencil-square-o"></button>
    			</div>
    			<div id="changeMainSubject">
    				<input type="text" id="s_subject_i">
    				<button>저장</button>
    			</div>
    		</div>
    	</div>
    	
    </div>
</div>	


<div class="container" style="margin-top: 10px;">

	<!-- 저장하기, 취소, 여행제목, 여행설명, 카테고리 -->
	<div class="row">
		<div class="col-md-3">
			<div id="SC_button">
			  	<input type="submit" id="save_button" value="저장하기">
			  	<input type="button" id="x_button" value="취소" onclick="window.location.href='./Newindex.jsp'">
			</div>
		</div>
		
		<div class="col-md-9">
			<div class="col-md-12" id="sch_contant">
				<div id="sch_subject" class="row">
					<input id="contant_sch_subject" class="form-control plan-brief" type="text" placeholder="여행의 제목을 적어 주세요.">
				</div>
				<div id="sch_note" class="row">
					<textarea class="form-control"  placeholder="당신의 여행 스토리를 적어주세요." maxlength="10000"></textarea>
				</div>
				<div id="sch_category" class="row">
					<div class="col-sm-3" id="sch_category_date">
						<div id="sch_category_date_input">
							<h6>여행시작일</h6>
							<input type="text" id="datepicker" readonly="readonly">
						</div>
						<div  id="sch_category_date_day">
							<h6>일</h6>
							<input type="text" id="num-day" value="4">
							
							<!-- ******인트로화면 만들기 -->
							<input type="button" value="입" id="dayInput"/>   
							
						</div>
					</div>
					<div class="col-sm-2" id="sch_category_BA">
						<h6>여행단계</h6>
							<input type="button" class="active_BA" value="여행 전"/>
							<input type="button" value="여행 후"/>
					</div>
					<div class="col-sm-7" id="sch_category_ctg">
						<h6>여행 테마</h6>
						<input type="button" class="active_ctg" value="나홀로 여행" style="float: left;">
						<input type="button" value="친구와 함께" style="float: left;">
						<input type="button" value="가족과 함께" style="float: left;">
						<input type="button" value="단체여행" style="float: left;">
						<input type="button" value="커플" style="float: left;">
						<input type="button" value="패키지 여행" style="float: left;">
					</div>
				</div>
			</div>
		</div>
		
	</div>
		



	<div class="row">

		<div class="col-md-3" id="searchForm">
				<div id="searchInnerForm">
					<!-- 장소 검색 폼 -->
					<h3>장소 검색</h3>
					<div class="input-group">
						<input type="text" class="form-control" id="keyword"
							placeholder="장소 검색">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" id="searchbt">
								<i class="glyphicon glyphicon-search" style="color: #ccc;"></i>
							</button>
						</div>
					</div>
					<hr>
					<!-- 장소 검색 결과 -->  
					<!-- **드래그 했을때 사진,글자만 끌어짐-->
					<!-- **드래그 했을때 전체 크기 작아지게 -->
					<div id="resultKeyword">
						<div id="drag1"  class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						<div id="drag2" class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						<div id="drag3" class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						<div id="drag4"  class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						<div id="drag5"  class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						<div id="drag6"  class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		
		<!--  다음 지도 -->
		<div class="col-md-9">
			<div id="map"></div> 	
		</div>
		
	</div>
	
	<div class="row">
		<div class="col-md-9 col-md-offset-3">
			<div class='row'>
				<!-- 여행일정 작성 옵션 -->
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
					<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<i class="glyphicon glyphicon-menu-right ani_right" id="ani_right" style="margin-top: 10px;"></i>
				</div>
			</div>
		</div>
	</div>
	
			
	
	</div><!-- container end-->


</div><!-- end -->

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4ed0ef3ccb8671cd6e217b1b7062a85"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>

<script src="resources/js/jquery-scrolltofixed.js"></script>
<script>
/* 메인이미지 */

$("#sch_Topimg img").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

$(".btn_file").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

$("#mainSubject").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

$("#changeMainSubject").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

$("#afterMainSubject button").click(function() {
	$("#afterMainSubject").css("display", "none");
	$("#changeMainSubject").css("display", "block");
	var txt = $("#s_subject_a").text();
	//console.log(atxt);
	$("#s_subject_i").val(txt);
});

$("#changeMainSubject button").click(function() {
	$("#changeMainSubject").css("display", "none");
	$("#afterMainSubject").css("display", "block");
	var txt = $("#s_subject_i").val();
	//console.log(txt);
	$("#s_subject_a").text(txt);
	$("#contant_sch_subject").val(txt);
});

$("#contant_sch_subject").change(function() {
	var txt = $(this).val();
	//console.log(txt);
	$("#s_subject_a").text(txt);
});




var uploadFile = $('.fileBox .uploadBtn');
uploadFile.on('change', function(){
    if(window.FileReader){
        var filename = $(this)[0].files[0].name;
    } else {
        var filename = $(this).val().split('/').pop().split('\\').pop();
    }
    $(this).siblings('.fileName').val(filename);
});





/* 검색 스크롤 */
$('#searchForm').scrollToFixed();

/* 지도 */
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴




/* sch_contant => active */
$("#sch_category_BA input").click(function() {
    var idx1 = $(this).index();
	
	$("#sch_category_BA input").removeClass("active_BA");
	$(this).addClass("active_BA");
});

$("#sch_category_ctg input").click(function() {
    var idx1 = $(this).index();
	
	$("#sch_category_ctg input").removeClass("active_ctg");
	$(this).addClass("active_ctg");
});





/* 달력 */
$('#datepicker').datepicker({
    format: 'yyyy-mm-dd'
});






/* searchbar X */
$("#searchbar").css("display","none");

$(".drag").draggable({
	
		
	   drag: function(event, ui){
           var drg = $(this);
           drg.clone();
       },
       
       revert: 'valid',
       cursor: 'crosshair',
       opacity: 0.35,
       helper: 'clone'
});



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
				+"<td id="+day+"_"+i+" class='col-md-3 daytime' style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none'></i></td></tr>");
		time+=1;
	}
	else{
		tbody=tbody+("<tr><th class='col-md-1'>"
				+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
				+"<td id="+day+"_"+i+" class='col-md-3 daytime'  style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none; '></i></td></tr>");
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
				+"</tbody><tfoot></tfoot></table></div></div></div></div>");
		
	}
	else{
		$("#table-test").append("<div class='col-md-4' style='display:none;'><div class='row'><div class='col-md-12'><div class='row'>"
				+"<table class='table'><thead class='thead-inverse'>"
				+"<tr><th colspan='2'>"+day+"일 day["+pppp+"]</th></tr></thead><tbody>"
				+trCreate(day)
				+"</tbody><tfoot></tfoot></table></div></div></div></div>");		
	}
	
	//drop 이벤트 생성
	$(".daytime").droppable({
		 drop: function (event, ui) {
			 
		      var droppable = $(this);
		      var draggable = ui.draggable;
		      
		      console.log(draggable.hasClass("drag"));
		      if(draggable.hasClass("drag")){
//			      console.log(draggable.find("a"));
//			      console.log(draggable.children());
			      
					var atag= draggable.find("a").clone();
					var moveicon="<i class='glyphicon glyphicon-remove'></i>";
			      // Move draggable into droppable
			      droppable.append("<div class='outer'><div class='inner'></div></div>");
			      
			      var $content=droppable.children();
			      droppable.children().children().append(atag);
			      droppable.children().children().append(moveicon);
			      droppable.children().children().find(".glyphicon-remove").on("click",function(){
			    	  droppable.children().remove();
			    	  droppable.droppable("enable");
			      });
			      droppable.children().children().css("background-color","skyblue").css("border-radius","5px").css("border", "1px solid #a1a1a1");
			      
			     
			      //$(".inner").append(atag);
			      //$(".inner").css("background-color","skyblue").css("border-radius","5px");//.css("border", "2px solid #a1a1a1");
			      //draggable.clone().text().appendTo(droppable);
			      
			      //resize 이벤트 생성
			      $(".inner").resizable({
			    	  handles:"s",
			    	  grid: 37,
			    	  
			    	  start:function(event,ui){
			    		  
			    	  },
			    	  resize:function(event,ui){
			    		 
			    	  },
			    	  stop:function(event,ui){
			    		  //console.log(ui);
			    		  //console.log(ui.helper.offset());
			    		 // console.log(ui.element.offset());
							var t=ui.helper.height()/37;
			    		  //console.log($("tfoot").offset().top);
			    		  //console.log($(this).find(".ui-resizable-s").offset());
			    		  //console.log(event);
			    		  //console.log(ui.helper.height()+parseInt(t)*2+2);
			    		  //console.log(ui.helper.height());
			    		  //console.log(parseInt(t));
			    		  ui.helper.height(ui.helper.height()+parseInt(t)*2-(parseInt(t)-1)*2)
			    		  var limit=$("tfoot").offset().top;
			    		  var uiTop=$(this).find(".ui-resizable-s").offset().top;
			    		  
			    		  if(limit<uiTop){
			    			  var original=ui.originalSize.height;
			    			  $(this).height(original);
			    		  }
			    		  
			    	  }
			      });
			      //outer 드레그 이벤트 재생성
			      $content.draggable({
			    	  revert: 'invalid',
			    	  stop:function(event,ui){
			    		  var draggable=ui;
			    		  var uiTop=ui.helper.children().find(".ui-resizable-s").offset().top;
			    		  var limit=$("tfoot").offset().top;
			    		 //console.log(ui.helper.children().find(".ui-resizable-s").offset().top);
			    		  
			    		  $("td").each(function(index){
			    			  
			    			 if($(this).find("div").length>0){
			    				 //console.log("존재"+index);
			    			 }
			    			 else{
			    				 $(this).droppable().droppable("enable");
			    			 }
			    				  
			    			  
			    		  });
			    		  
			    		  if(limit<uiTop){
			    			  ui.helper.children().height("37");
			    		  }
			    	  }
			      });
		      }//if end
		      else{
		    	  droppable.append(draggable);
		    	  draggable.find(".glyphicon-remove").on("click",function(){
		    		  draggable.remove();
		    		  droppable.droppable("enable");
		    	  });
		    	  draggable.css("left","");
		    	  draggable.css("top","");
		      }//else end
		      
		      
		      $(this).droppable("disable");
		      
		 }//drop end
});
}
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
/*
 * 2017.08.29 임은섭
 * 드롭 이벤트 생성
 */




//

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

$(".ani_left").on("click",function(){
	 $slide_left(index); 
});

$(".ani_right").on("click",function(){
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


<%@ include file="footer.jsp" %>
