<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div style="background: #fff;">
<div class="container" style="position: relative;">
	<div class="row">
		<div class="col-md-3">
			<div id="range" >
			
				<h4 style="padding-top: 20px;">검색범위 및 정렬방식</h4>
				<div align="center">
					<select name="date">
						<option>최근 1일
						<option>최근 1주
						<option>최근 1달
						<option selected="selected">전체
					</select>
					<select name="date_category" >
						<option selected="selected">인기순
						<option>최근순
					</select>
				</div>
				
				<h4>여행구분</h4>
				<div id="trip_BA" align="center">
					<button class="trip_BA_active" id="trip_AllBA">전체</button>
					<button id="trip_B">여행 전</button>
					<button id="trip_A">여행 후</button>
				</div>
				
				<h4>여행테마</h4>
				<div id="tripthema" align="center">
					<button class="trip_BA_active" id="tripthema_1">전체</button>
					<button id="tripthema_2">나홀로 여행</button>
					<button id="tripthema_3">친구와 함께</button>
					<button id="tripthema_4">가족과 함께</button>
					<button id="tripthema_5">단체여행</button>
					<button id="tripthema_6">커플</button>
					<button id="tripthema_7">패키지 여행</button>
				</div>
				
				<h4>여행기간</h4>
				<div id="slidecontainer">
					<p><span id="demo"></span></p>
					<div id="trip_slider_div">
  						<input type="range" min="1" max="50" value="3" class="slider" id="trip_slider">
  					</div>
				</div>
  				
				<div id="range_apply_button" align="center">
					<input  type="submit" value="적용">
				</div>
			</div>
		</div>
		
		<div class="col-md-9">
			<div id="recommend_sch_con">
				<div class="row">
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행 입니다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅣㅏㅏㅏㅏㅏㅏㅏㅏㅏ</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="recommend_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div  class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_2"> 
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="recommend_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju_1.gif"/>
								<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
			
				
			</div>
		</div>
	</div>
	
	
</div>

<!-- top으로 가는 버튼 -->
	
	<div id="topBtn">
        <a href="#" title="top"><i class="fa fa-arrow-circle-up"></i></a>
    </div>
	

</div><!-- end -->


<!-- 무한스크롤 템플릿 -->
<script type="text/template" id="Inner_content">
	<div class="row" style="margin-top: 10px;">
		<div class="col-md-6">
			<div class="recommend_sch_con_inner_1">
				<a href="#">
					<img alt="" src="resources/img/jeju_1.gif"/>
					<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
					<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
					<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
				</a>
			</div>
		</div>
		<div class="col-md-6">
			<div class="recommend_sch_con_inner_2">
				<a href="#">
					<img alt="" src="resources/img/jeju_1.gif"/>
					<div id="recommend_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
					<div id="recommend_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
					<div id="recommend_sch_con_inner_BA"><p>여행 전</p></div>
				</a>
			</div>
		</div>
	</div>
</script>



<script src="resources/js/jquery.js"></script>
<script src="resources/js/underscore.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>

<script>

//slider
var slider = document.getElementById("trip_slider");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}


//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(2).addClass("active");


/* searchbar 내용바꾸기*/
$("#searchbar_input").attr("placeholder", "어떤 일정이 궁금하세요?");


/* #range active */
$("#trip_BA button").click(function() {
    var idx1 = $(this).index();
	
	$("#trip_BA button").removeClass("trip_BA_active");
	$(this).addClass("trip_BA_active");
});

$("#tripthema button").click(function() {
    var idx1 = $(this).index();
	
	$("#tripthema button").removeClass("trip_BA_active");
	$(this).addClass("trip_BA_active");
});


/* 무한 스크롤 */
var index = 0;
$(window).scroll(function () {
    //alert("test");
    //스크롤 높이
    var sTop = Math.round($(this).scrollTop());
    //document의 높이
    var dHeight = $(document).height();
    //브라우저(window)의 전체 세로 높이
    var wHeight = $(window).height();
    //console.log(sTop);
    //console.log(dHeight);
    //console.log(wHeight);
 
	
    //현재 스크롤 위치 = sTop + wHeight
     if(dHeight==(sTop + wHeight)) {
        //alert("스크롤끝!!")
        for(var i=0; i<10; i++) {
        	 var tmp = _.template($("#Inner_content").html())
             
            $("#recommend_sch_con").append(tmp);
        }//for end
    }//if end 
   

    //제일 위로 버튼 출력
     if(sTop>200) {
        $("#topBtn").show().css("right",70);
    }else {
        $("#topBtn").hide();
    }//if end 


}); 

/* 스크롤 버튼 fixed */
$('#topBtn').scrollToFixed();

/* 스크롤 버튼 top으로 올라가기 */
$('#topBtn').click(function() {
	$('html, body' ).stop().animate( { scrollTop : '0' } )

});

</script>


<%@ include file="footer.jsp" %>
