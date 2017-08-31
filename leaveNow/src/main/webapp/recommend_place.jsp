<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div style="background: #fff;">
	<div class="container" style="position: relative;">
		<div class="row">
			<div class="col-md-3">
				<div id="right_content">
					<div id="right_content_map">
					<!-- 지도 모달로 -->
						<a href="#">
							<img alt="" src="resources/img/icon-map-click-ko.png">
						</a>
					</div>
					<div id="right_content_list">
						<ul>
							<li>
								<a>
									<span>관광지</span>
								</a>
							</li>
							<li>
								<a>
									<span>쇼핑</span>
								</a>
							</li>
							<li>
								<a>
									<span>야외활동</span>
								</a>
							</li>
							<li>
								<a>
									<span>관광지</span>
								</a>
							</li>
							<li>
								<a>
									<span>관광지</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		
			<div class="col-md-9">
				<div id="left_content">
			
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
