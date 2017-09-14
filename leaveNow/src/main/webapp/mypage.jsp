<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 배경색 -->
<div style="background: #fff;">

	<!-- 메인프로필 -->
	<div class="row" id="mypage_Top">
		<!-- 메인이미지 -->
		<img id="mypage_Top_img" src="resources/img/Tulips.jpg" align="middle ">
		
		<!-- 메인 커버 바꾸기 버튼 -->
		<div class="container">
			<div class="row">
				<div class="col-md-offset-3 col-md-6 col-md-offset-3">
					<div class="fileBox" style="margin-top: -60px; margin-left: 240px;">
		    			<label for="uploadBtn" class="btn_file">커버 바꾸기</label>
		    			<input type="file" id="uploadBtn" class="uploadBtn">
					</div>
				</div>
			</div>
			<!-- 메인 프로필 -->  <!-- 17.09.04 css -->
			<div class="row" >
				<div class="col-md-offset-3 col-md-6 col-md-offset-3">
		    		<div id="mainprofile">
		    			<img src="resources/img/avatar.jpg" id="mainprofile_img_img" class="img-circle" alt="Cinque Terre" width="200" height="200" style="border: solid 1px #ccc;">
		    			<div id="mainprofile_img">
		    				<label for="mainprofile_img_Btn" class="mainprofile_img_btn_file">프로필 사진변경</label>
		    				<input type="file" id="mainprofile_img_Btn" class="mainprofile_img_Btn">
		    			</div>
		    			<br><br>
		    			<a>${m_name }</a>
		    			<p>${email }</p>
		    		</div>
		    	</div>
		    	
		    </div>
	    </div>
	</div>	<!-- sch_Topimg end -->


	<div class="container" style="position: relative;">
		
		<div class="col-md-3">
			<div id="right_content_list" style="margin: 20px 0 20px 0; height: 200px;">
				<ul>
					<a id="right_content_list_1_a" href="#">
						<li id="right_content_list_1">
							<span>MY 여행일정</span>
						</li>
					</a>
					<a id="right_content_list_2_a" href="#">
						<li id="right_content_list_2">
							<span>북마크</span>
						</li>
					</a>
					<a id="right_content_list_3_a" href="#">
						<li id="right_content_list_3">
							<span>위시보드</span>
						</li>
					</a>
					<a id="right_content_list_4_a" href="my_informationForm.jsp">
						<li id="right_content_list_3">
							<span>회원정보 수정</span>
						</li>
					</a>
				</ul>
			</div>
		</div>
		
		<div id="left_content" class="col-md-9">
		
			<!-- ==================== MY 여행일정 ==================== -->
			<div id="my_sch_con" style="display: block;" > <!-- style="display: none;" -->
				<div class="row">
					<div class="col-md-6">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행 입니다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅣㅏㅏㅏㅏㅏㅏㅏㅏㅏ</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				
			</div><!-- my_sch_con end -->
			
			<!-- ==================== 북마크 ==================== -->
			<div id="my_bookmark" style="display: none;">
				<div class="row">
					<div class="col-md-6">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행 입니다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅣㅏㅏㅏㅏㅏㅏㅏㅏㅏ</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6" style="">
						<div class="my_sch_con_inner_1">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="my_sch_con_inner_2">
							<a href="#">
								<img alt="" src="resources/img/jeju__1.gif"/>
								<div id="my_sch_con_inner_subject" class="line-clamp_1"><p>제주도 여행</p></div>
								<div id="my_sch_con_inner_content" class="line-clamp"><p>제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행제주도 여행</p></div>
								<div id="my_sch_con_inner_BA"><p>여행 전</p></div>
							</a>
						</div>
					</div>
				</div>
			</div> <!-- my_bookmark end -->
			
			
			<!-- ==================== 위시보드 ==================== -->
			<div id="my_wich" style="display: none;" style="margin-top: 0px;">
				<div class="col-md-12" id="left_content_1" >
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
			</div> <!-- my_wich end -->
		</div><!-- left_content end -->
	</div><!-- container end -->
</div><!-- sch_background end -->




<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/bootstrap-datepicker.kr.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/underscore.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/jquery.js"></script>
<script>

/* ================ navbar active ================ */
$(".loginAfter a").addClass("active");



/* ================ top_profile ================ */
/* button hover */
$("#mypage_Top img").hover(
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

$("#mainprofile").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

$("#mainprofile img").hover(
		function(){
			$(".mainprofile_img_btn_file").css("display", "block");
			
		},
		function(){
			$(".mainprofile_img_btn_file").css("display", "none");
		}
);

$(".mainprofile_img_btn_file").hover(
		function(){
			$(".mainprofile_img_btn_file").css("display", "block");
			
		},
		function(){
			$(".mainprofile_img_btn_file").css("display", "none");
		}
);

$(".mainprofile_img_btn_file").hover(
		function(){
			$(".btn_file").css("display", "block");
			
		},
		function(){
			$(".btn_file").css("display", "none");
		}
);

/* image 미리보기 */
$('#uploadBtn').on('change', function() {
        
     ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        
     //배열에 추출한 확장자가 존재하는지 체크
     if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
         resetFormElement($(this)); //폼 초기화
         window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
     } else {
         file = $('#uploadBtn').prop("files")[0];
         blobURL = window.URL.createObjectURL(file);
         $('#mypage_Top_img').attr('src', blobURL);
         $(this).slideUp(); //파일 양식 감춤
     }
 });
 
$('#mainprofile_img_Btn').on('change', function() {
    
    ext = $(this).val().split('.').pop().toLowerCase(); //확장자
       
    //배열에 추출한 확장자가 존재하는지 체크
    if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
        resetFormElement($(this)); //폼 초기화
        window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
    } else {
        file = $('#mainprofile_img_Btn').prop("files")[0];
        blobURL = window.URL.createObjectURL(file);
        $('#mainprofile_img_img').attr('src', blobURL);
        $(this).slideUp(); //파일 양식 감춤
    }
});




/* ================ right list 페이지 display 처리 ================ */

$("#right_content_list_1_a").click(function() {my_wich
	$("#my_bookmark").css("display", "none");
	$("#my_wich").css("display", "none");
	$("#my_information").css("display", "none");
	$("#my_sch_con").css("display", "block");
});

$("#right_content_list_2_a").click(function() {
	$("#my_sch_con").css("display", "none");
	$("#my_wich").css("display", "none");
	$("#my_information").css("display", "none");
	$("#my_bookmark").css("display", "block");
});

$("#right_content_list_3_a").click(function() {
	$("#my_sch_con").css("display", "none");
	$("#my_bookmark").css("display", "none");
	$("#my_information").css("display", "none");
	$("#my_wich").css("display", "block");
});

$("#right_content_list_4_a").click(function() {
	$("#my_sch_con").css("display", "none");
	$("#my_bookmark").css("display", "none");
	$("#my_wich").css("display", "none");
	$("#my_information").css("display", "block");
});


</script>

<%@ include file="footer.jsp" %>