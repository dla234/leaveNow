<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div style="background: #fff;">
	<div class="container" style="position: relative;">
		<div class="row">
			<div class="col-md-3">
				<div id="right_content">
				 	<div class="row">
						<div id="right_content_map">
						<!-- 지도 모달로 -->
							<a href="#">
								<img alt="" src="resources/img/icon-map-click-ko.png">
							</a>
						</div>
					</div>
					<div class="row">
						<div id="right_content_list">
							<ul>
								<li id="right_content_list_1">
									<a>
										<span>관광지</span>
									</a>
								</li>
								<li id="right_content_list_2">
									<a>
										<span>쇼핑</span>
									</a>
								</li>
								<li id="right_content_list_3">
									<a>
										<span>야외활동</span>
									</a>
								</li>
								<li id="right_content_list_4">
									<a>
										<span>교통</span>
									</a>
								</li>
								<li id="right_content_list_5">
									<a>
										<span>즐길거리</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-md-9">
				<div id="left_content">
					<div class="col-md-12" id="left_content_1">
						<a href="#">
							<img alt="" src="resources/img/lotteworld.jpg">
						</a>
						<div id="left_content_text">
							<h3 class="line-clamp_1"><a href="#">롯데월드(lotte world)</a></h3>
							<p class="line-clamp_2">장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.장소 설명입니다.</p>
							<div>
								<input type="button" onclick="" value="관광명소">
								<a class="wish_count" href="#">
									<span><i class="fa fa-heart"> Wish - </i></span>
									<span id="wish_count_num">123</span>
								</a>
							</div>
						</div>
					</div>
					
					<div class="col-md-12" id="left_content_2">
					
					
					
					
					</div>
				</div>
			</div>
		</div><!-- row end -->
	</div><!-- container end -->
</div><!-- sch_background end -->


<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/bootstrap-datepicker.kr.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script>

//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(3).addClass("active");




</script>


<%@ include file="footer.jsp" %>
