<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div style="background: #fff;">
	<div class="container" style="position: relative;">
		<div class="row">
			<div class="col-md-9">
				<div id="right_view_top" style="width: 100%;">
					<div id="place_main_img">
						<img alt="" src="resources/img/jeju__1.gif">
					</div>
					<div id="place_main_map" style="width:100%; height:420px;">
						
					</div>
				</div>
				<div id="right_view_list">
					<a id="place_main_img_btn">사진</a>
					<a id="place_main_map_btn">위치</a>
				</div>
			</div>
			<div class="col-md-3">
			
			</div>
		</div>
		
		
	</div><!-- container end -->
</div><!-- sch_background end -->

<%
String address = request.getParameter("address");
out.print("주소  " + address);// 출력
%>


<script src="resources/js/bootstrap-datepicker.js"></script>
<!-- <script src="resources/js/bootstrap-datepicker.kr.js"></script> -->
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/underscore.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=788a142b3a17ec3e861dec88826f3a12&libraries=services"></script>
<script>
//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(3).addClass("active");


//img&map btn
$("#place_main_map_btn").click(function() {
	$("#place_main_img").css("display", "none");
	$("#place_main_map").css("display", "block");
});

$("#place_main_img_btn").click(function() {
	$("#place_main_map").css("display", "none");
	$("#place_main_img").css("display", "block");
});


//지도
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('place_main_map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch('<%=address %>', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new daum.maps.LatLngBounds();

        //for (var i=0; i<data.length; i++) {
            displayMarker(data[0]);    
            bounds.extend(new daum.maps.LatLng(data[0].y, data[0].x));
        //}       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    daum.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}

$(window).load(function() {
	alert(2);
});
$(document).ready(function() {
	alert(1);
});

</script>

<%@ include file="footer.jsp" %>