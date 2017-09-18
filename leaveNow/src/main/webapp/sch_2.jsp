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
    				<a id="s_subject_a">${param.s_subject }</a>
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
	<!-- 2555 -->
	<div class="row">
		<div class="col-md-3">
			<div id="SC_button">
			  	<input type="button" id="save_button" value="저장하기" onclick="schModified()">
			  	<input type="button" id="x_button" value="취소" onclick="window.location.href='./Newindex.jsp'">
			</div>
		</div>
		
		<div class="col-md-9">
			<div class="col-md-12" id="sch_contant">
				<div id="sch_subject" class="row">
					<input id="contant_sch_subject" class="form-control plan-brief" type="text" placeholder="여행의 제목을 적어 주세요." value="${param.s_subject }">
				</div>
				<div id="sch_note" class="row">
					<textarea class="form-control" id="sch_content" placeholder="당신의 여행 스토리를 적어주세요." maxlength="10000"></textarea>
				</div>
				<div id="sch_category" class="row">
					<div class="col-sm-3" id="sch_category_date">
						<div id="sch_category_date_input">
							<h6>여행시작일</h6>
							<input type="text" id="datepicker" readonly="readonly" value="${s_sdate }">
						</div>
						<div  id="sch_category_date_day">
							<h6>일</h6>
							<input type="text" id="num-day" value="${param.sday }">
							
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
						<!-- 
						<div id="drag1" draggable="true" ondragstart="drag(event)"
							class="outer">
							<div class="inner">
								<img src="resources/img/111.jpg">
								<a href="#">장소이름</a>
								<div class="line-clamp">장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명장소설명</div>
							</div>
						-->
						<div id="drag1"  class="drag">
							<div class="content">
								<img src="resources/img/111.jpg" width="95px;" height="95px;" style="float: left;">
								<a href="#">장소이름1</a>
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

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          <img class="mainImg" style="width: 568px;height: 400px"></img>
          	<button id="edit" class="btn btn-primary" onclick="edit()" type="button">Edit 1</button>
		  	<button id="save" class="btn btn-primary" onclick="save()" type="button">Save 2</button>
          <div id="summernote"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/underscore.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>

<script>

var postion=[];
var markers=[];
var polylines=[];  
var today;

var markup;


function saveToday(day){
	today=day;
}

 $("#keyword").keydown(function(key){
	 if(key.keyCode==13){
		 $searchFunction();
	 }
	 else{
		 
	 }
 });
 
 $("#searchbt").on("click",function(){
	 $searchFunction();
 });

$searchFunction= function(){
	$.ajax({
		type:"GET",
		//url:"http://172.16.4.23:9090/trip/local/keyword.do?query="+ $("#keyword").val(),
		url:"./local/keyword.do",
		//url:"./keyword.do",
		dataType: "jsonp",
		jsonp:"callback",
		success:function(data){
			alert("success");
			console.log(data);
			$("#resultKeyword").children().remove();
			for(var i=0;i<data.length;i++){
				$("#resultKeyword").append("<div class='drag'><div class='content'></div></div>")
				
				$(".drag").eq(i).children().append("<img src=''></img>");
				$(".drag").eq(i).children().find("img").attr("src",data[i].mainphotourl)
				$(".drag").eq(i).children().find("img").css("width","95px");
				$(".drag").eq(i).children().find("img").css("height","95px");
				$(".drag").eq(i).children().find("img").css("float","left");
				$(".drag").eq(i).children().append("<a herf='detail_link'>"+data[i].gname+"</a>");
				$(".drag").eq(i).children().data("x",data[i].x);
				$(".drag").eq(i).children().data("y",data[i].y);
				$(".drag").eq(i).children().data("gcode",data[i].id);
				//console.log($(".drag").eq(i).children());
				/* 
				$(".drag").eq(i).children().append("<img src=''></img>");
				$(".drag").eq(i).children().find("img").attr("src",data[i].mainphoto)
				$(".drag").eq(i).children().find("img").css("width","95px");
				$(".drag").eq(i).children().find("img").css("height","95px");
				$(".drag").eq(i).children().find("img").css("float","left");
				
				$(".drag").eq(i).children().append("<a herf='#'>"+data[i].gname+"</a>");
				$(".drag").eq(i).children().find("a").css("color", "#000")
				
				$(".drag").eq(i).children().append("<p class='line-clamp'>"+data[i].description+"</p>");
				$(".drag").eq(i).children().find("p").css("position", "absolute");
				$(".drag").eq(i).children().find("p").css("margin", "5px 10px 0 95px");
				$(".drag").eq(i).children().find("p").css("padding-top", "5px");
				$(".drag").eq(i).children().find("p").css("border-top", "solid 1px #ccc");
				$(".drag").eq(i).children().find("p").css("height", "61px");
				$(".drag").eq(i).children().find("p").css("overflow", "hidden");
				$(".drag").eq(i).children().find("p").css("color", "#ccc");
				$(".drag").eq(i).children().find("p").css("font-size", "13px");
				$(".drag").eq(i).children().data("x",data[i].mapx);
				$(".drag").eq(i).children().data("y",data[i].mapy);
				 */
			}
			$drag();
			
			//$("#resultKeyword").append("<div class='drag'></div>");
			
			
		},
		error:function(request,status,error){
		
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})
};
	

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
	center: new daum.maps.LatLng(37.68333128118477, 129.044764671772), //지도의 중심좌표.
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

/*
 * 2017.08.30 임은섭 
 * drag 이벤트 걸기
 */
$drag=function(){
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
}; 




//24시 테이블 줄 작성
function trCreate(day,date){
var tbody="";
var time=0;

for(var i=1; i <= 49;i++){
	var min=0;
	
	if(i%2==0){
		min+=30;
		var timeRow=leadingZeros(time, 2)+":"+leadingZeros(min, 2);
		tbody+=
		("<tr ><th class='col-md-1' >"
				+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
				+"<td id="+date+"-"+timeRow+" class='col-md-3 daytime' style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none'></i></td></tr>");
		time+=1;
	}
	else{
		var timeRow=leadingZeros(time, 2)+":"+leadingZeros(min, 2);
		tbody=tbody+("<tr><th class='col-md-1'>"
				+leadingZeros(time, 2)+":"+leadingZeros(min, 2)+"</th>"
				+"<td id="+date+"-"+timeRow+" class='col-md-3 daytime' style='text-align: center;padding:0;'><i class='glyphicon glyphicon-plus' style='display:none; '></i></td></tr>");
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
	
	/* 2017.08.21 임은섭
		drop 이벤트 생성
	*/
	
	$(".daytime").droppable({
		 drop: function (event, ui) {
			 
		      var droppable = $(this);
		      var draggable = ui.draggable;
		      var x=draggable.children().data("x");
		      var y=draggable.children().data("y");
		      var gcode=draggable.children().data("gcode");
		      //console.log(draggable.children().data("x"));
		      //console.log(draggable.children().data("y"));
		     // console.log(droppable.attr("id"));
		      //console.log(today);
		     // console.log(draggable.hasClass("drag"));
		      
		      
		      if(draggable.hasClass("drag")){

					var atag= draggable.find("a").clone();
					var photo=draggable.find("img").attr("src");
					
					console.log(photo);
					var removeicon="<i class='glyphicon glyphicon-remove'></i>";
					var makeList="<span class='glyphicon glyphicon-th-list'></span>";
			      // Move draggable into droppable
			      droppable.append("<div class='outer'><div class='inner'></div></div>");
			      
			      var $content=droppable.children();//inner div
			      droppable.children().children().append(makeList);
			      droppable.children().children().append(atag);
			      droppable.children().children().append(removeicon);
			      droppable.children().children().find(".glyphicon-remove").on("click",function(){
			    	  droppable.children().remove();

			    	  findPositions(droppable,"non",droppable);
			    	  
			    	  droppable.droppable("enable");
			      });
			    
			      droppable.children().children().css("background-color","skyblue").css("border-radius","5px").css("border", "1px solid #a1a1a1");
			      droppable.children().children().data("mainphoto",photo);
			      droppable.children().children().data("title",atag.text())
			      droppable.children().children().data("x",x);
			      droppable.children().children().data("y",y);
			      droppable.children().children().data("gcode",gcode);
			      droppable.children().children().data("startTime",droppable.attr("id"));
			     
			      //console.log(droppable.attr("id").substring(10));
			      
			      droppable.children().children().find(".glyphicon-th-list").on("click",function(){
			    	  $("#myModal").modal("show");
			    	 
			    	  markup=$(this).parent();
			    	  $('#summernote').children().remove();
			    	  $("#myModal").find(".mainImg").attr("src",markup.data("mainphoto"));
			    	  $('#summernote').append(markup.data('text'));
			      });
			      var endTime1=droppable.attr("id").substring(0,11);
			      var endTime2=droppable.attr("id").substring(11);
			      
			      var endTimeStr=endTime2.split(":");
			      
			      if(parseInt(endTimeStr[1])==30){
			    	  endTimeStr[1]="00";
			    	  var demo=parseInt(endTimeStr[0])+1;
			    	  endTimeStr[0]= leadingZeros(demo.toString(),2);
			      }
			      
			      //droppable.children().children().data("endTime",endTime1+endTimeStr[0]+":"+endTimeStr[1]);
			      droppable.children().children().data("endTime",1);
			     //console.log(droppable.children().children().data("endTime"));
			      //resize 이벤트 생성
			      $(".inner").resizable({
			    	  handles:"s",
			    	  grid: 37,
			    	  stop:function(event,ui){
			    		 
						var t=ui.helper.height()/37;
			    		 
			    		  ui.helper.height(ui.helper.height()+parseInt(t)*2-(parseInt(t)-1)*2);
			    		  console.log(t);
			    		  console.log(Math.round(t));
			    		  var limit=$("tfoot").offset().top;
			    		  var uiTop=$(this).find(".ui-resizable-s").offset().top;
			    		  
			    		  if(limit<uiTop){
			    			  var original=ui.originalSize.height;
			    			  $(this).height(original);
			    		  }
			    		  else{
			    			  
			    			  $(this).data("endTime",Math.round(t));
			    			  console.log($(this).data("endTime"));
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
							
			    		  $("td").each(function(index){
			    			  
			    			 if($(this).find("div").length>0){
			    				 //console.log("존재"+index);
			    			 }
			    			 else{
			    				 $(this).droppable().droppable("enable");
			    			 }

			    		  });
			    		  
			    		  //console.log($(this));
			    		  //console.log(ui.helper.find(".inner").data("x"));
			    		  //console.log(ui.helper.find(".inner").data("y"));
			    		  //console.log(ui.helper.find(".inner").data("startTime"));
			    		  //console.log(ui.helper.find(".inner").data("endTime"));
			    		  ui.helper.find(".inner").data("startTime",$(this).parent().attr("id"))
							
			    		  //console.log(ui.helper.find(".inner").data("startTime"));
			    		  var end=ui.helper.find(".inner").data("endTime");

			    		  if(limit<uiTop){
			    			  ui.helper.children().height("37");
			    		  }
			    	  }
			      });
			      //inner 클래스에 마커 이동 클릭 이멘트 걸기
			      $content.on("click",function(){
			    	  //alert("클릭");
			    	  movePostion($(this));
			      });
		      }//if end
		      else{
		    	  droppable.append(draggable);
		    	  draggable.find(".glyphicon-remove").on("click",function(){
		    		  draggable.remove(); 
		    		  findPositions(droppable,"non",droppable);
		    		  droppable.droppable("enable");
		    	  });
		    	  draggable.css("left","");
		    	  draggable.css("top","");
		      }//else end
				
		      $(this).droppable("disable");
		      
		      /*
		      	2017.09.05 임은섭
		      	마커 생성 내용
		      */
		      findPositions($(this),"drop",droppable);
		      
		      
		 }//drop end
	});
	
};//일정 테이블 end

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
createClickTr();

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
 * 2017.09.05 임은섭
 * 일정 정보 객체 생성
 */
function createContent(title,x,y,i){
	var o={};
	o.index=i;
	o.title=title;
	o.latLng=new daum.maps.LatLng(y,x);
	return o;
}
function findEach(find,positions){
	find.each(function(i,e){
		
		var title=$(this).data("title");
		var x=$(this).data("x");
		var y=$(this).data("y");
		var o=createContent(title,x,y,i);
		positions.push(o);
	});
} 
/*
 * 2017.09.06 임은섭
 * 지도 마커 생성 및 이동
 */
function findPositions(o,e,f){
	
	var find=o.parent().parent().find(".inner");
    var index=0;
    var demo=o.parent().parent();
    console.log(demo);
    console.log(o);
    
	if(e==="drop"){
		 for(var i=0;i<find.length;i++){
		  	 var e=find[i].parentElement;
		  	 var e1=e.parentElement.id;
		  	 if(e1==f.attr("id")){
		  		index=i; 
		  	 }
		   }
	}

    for(var i=0;i<markers.length;i++){
  	  markers[i].setMap(null);
    }
    for(var i=0;i<polylines.length;i++){
  	  polylines[i].setMap(null);
    }
    var positions=[];
        markers=[];
    	  polylines=[];
    	  
    findEach(find,positions);
    
    //console.log(positions);
    for(var i=0;i<positions.length;i++){
  	  var marker = new daum.maps.Marker({
  	         // 마커를 표시할 지도
  	        title:positions[i].title,	
  	        position: positions[i].latLng // 마커를 표시할 위치
  	    });
  	  markers.push(marker);
    }
		//console.log(markers);
		
		 for(var i=0;i<positions.length-1;i++){
	    	  var polyline = new daum.maps.Polyline({
	    	        path:[
	    	        	positions[i].latLng,
	    	        	positions[i+1].latLng
	    	        ]
	    	    });
	    	  polylines.push(polyline);
	      }
			//console.log(markers);
		
		//map=new daum.maps.Map(container, options);
		
		for(var i=0;i<markers.length;i++){
			markers[i].setMap(map);
			
		}
		if(polylines.length>0){
			for(var i=0;i<polylines.length;i++){
				polylines[i].setMap(map);  
			}
		}
		if(find.length>0){
			map.panTo(positions[index].latLng);
		}
		
    //var bounds = new daum.maps.LatLngBounds();  
    //map.panTo(positions[0].latLng);
	
	
}
/*
 * 2017.09.06 임은섭
 * 날짜별로 지도 마커 생성 클릭 이벤트
 */
function createClickTr(){
	$(".tIndex").on("click",function(){
		findPositions($(this),"non",null);
	});
}

function movePostion(f){
	var index=0;
	var find=f.parent().parent().parent().parent().find(".inner");
	var positions=[];
	var parent=f.parent();
	findEach(find,positions);
	
	for(var i=0;i<find.length;i++){
	  	 var e=find[i].parentElement;
	  	 var e1=e.parentElement.id;
	  	 	  	 
	  	 if(e1==parent.attr("id")){
	  		index=i; 
	  	 }
	}
	if(find.length>0){
		map.panTo(positions[index].latLng);
	}
}


var edit = function() {
		//$('#summernote').summernote('reset');
	
	  $('#summernote').summernote({
		  
		  toolbar: [
			    // [groupName, [list of button]]
			    ['style', ['bold', 'italic', 'underline', 'clear']],
			    ['font', ['strikethrough', 'superscript', 'subscript']],
			    ['fontsize', ['fontsize']],
			    ['color', ['color']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']]
			  ],
		  focus: true,
		  //code:markup.data('text'),
		  
		  callbacks:{
			  /* 
		  	  onImageUpload:function(files){
			  
	              //sendFile(files[0], this);
	            console.log(files[0]);
			  },
			  */ 
			  onMediaDelete : function($target, editor, $editable) {
		          console.log(":"+$target); // img 
		          alert("삭제");
		         //$target.remove();
		    }
		  }
		 
	});
	  
	  $('#summernote').summernote('code',markup.data('text'));
	 // console.log(markup.data('text'));
	  //$('#summernote').summernote('insertNode',markup.data("text"));
	  
	 // $("#summernote").find("p").append("text");
	};

var save = function() {
	var mark = $('#summernote').summernote('code');
	  //var mark = $('#summernote').summernote('code');
	  //console.log(mark);
	  //console.log(mark);
	 
	  markup.data("text",mark);
	  console.log(find.length);
	  //console.log(markup.data("text"));
	  //$("#summernote").find("p").children().remove();
	  //$("#summernote").find("p").append("실험");
	  $('#summernote').summernote('destroy');
	  
	};

	
	function sendFile(file, el) {
	      var form_data = new FormData();
	      console.log(file);
	      form_data.append("file", file);
	      $.ajax({
	        data: form_data,
	        type: "POST",
	        url: 'upload/summernote',
	        cache: false,
	        contentType: false,
	        enctype: 'multipart/form-data',
	        processData: false,
	        success: function(fullpath) {
	        	$('#summernote').summernote('insertImage', fullpath);
	        	console.log(fullpath);
	          //$(el).summernote('editor.insertImage', url);
	          //$('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
	          
	        },
	        error: function(error) {
	            console.log(error);
	            
	           }
	      });
	    };

/* 2555
 * 2017.09.15 임은섭
 * 스케쥴 저장 1차 
 */
var s_id="${param.s_id}";
function schModified(){
	alert("저장하기 시도");
	var s_sdate=$("#datepicker").val();
	var s_day=$("#num-day").val();
	var s_subject=$("#contant_sch_subject").val();
	var s_content=$("#sch_content").val();
	var after=$(".active_BA").val();
	if(after=="여행 전"){
		after='B';
	}
	else if(after=="여행 후"){
		after='A';
	}
	$.ajax({
		url:"./sch/modified",
		type : "POST",
		data:{
			"s_id":s_id,
			"s_sdate":new Date(s_sdate),
			"after":after,
			"s_day":s_day,
			"s_subject":s_subject,
			"s_content":s_content},
		success:function(data){
			console.log(data);
		}
	});
	
}
	    
    
$(document).ready(function() {
	console.log(s_id);
	var index=$("#num-day").val(); 
		
	//var now = new Date().format("yy-mm-dd");
	var now= "${param.s_sdate}"
	
	var toNow=now.toString()
	//console.log("ready:"+now.toString());
	
	var nowDate=$("#datepicker").val(toNow);
	//var nowDate=$("#datepicker").val();
	//alert(nowDate);
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
	createClickTr();
	saveToday(acountDate);
	
	$("#save_button").on("click",function(){
		alert("content 저장하기");
		var formArray=[];
		$("#table-test").find(".inner").each(function(){
			var formObject={
					startTime:$(this).data("startTime"),
					endTime:$(this).data("endTime"),
					content:$(this).data("text"),
					x:$(this).data("x"),
					y:$(this).data("y"),
					gcode:$(this).data("gcode"),
					s_id:s_id
			};
			
			formArray.push(formObject);
		});
		
		$.ajax({
			url:"./contnet/save",
			method:"POST",
			dataType : "json",
			data: JSON.stringify(formArray),
			contentType : 'application/json',
			success:function(data){
				alert(data);
			}
		});
		
		
	});
	
});


$(".w3-bar.w3-red.w3-card-2 a").eq(4).addClass("active");



</script>




<%@ include file="footer.jsp" %>
