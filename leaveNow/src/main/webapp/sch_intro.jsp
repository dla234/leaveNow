<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>


<style>
.datepicker{z-index:1151 !important;}

#sch_intro {
	/* border: solid 1px #ccc; */
	height: 350px;
	padding-left:0px ! important;
}

#sch_intro_header {
	height:50px;
	width: 100%;
	height: 100px;
	padding: 0 10px 0 10px;
}	

#sch_intro_header>h3 {
	height:50px;
	border-bottom: solid 1px #ccc;
	margin-left:0px ! important;
	margin: 30px;
	position: absolute;
	text-align: center;
	width: 96%;
}

#main_subject_div {
	width: 100%; 
	margin-top: 30px;
}

#main_subject {
	width: 99%; 
	height:60px; 
	font-size: 20px; 
	margin-left:10px;
	padding-left: 10px;
	border: solid 1px #ccc;
}

#trip_date_div {
	margin-top: 10px; 
	margin-left:10px;
	width: 100%;
}

#trip_date_num {
	text-align:center; 
	width: 23%; 
	height:60px; 
	font-size: 20px; 
	border: solid 1px #ccc;
}

#sch_intro_footer {
	width:100%; 
	margin: 45px 0 10px 0; 
	padding: 0 50px 0 50px;
}

</style>

<!-- 배경색 -->
<form action="sch/create.do" method="post">
	<div style="background: #fff;">
		<div class="container" style="position: relative; margin-top: 100px; margin-bottom: 130px;">
			<div class="row">
				<div id="sch_intro" class="col-md-offset-3 col-md-6 col-md-offset-3">
					<div id="sch_intro_header">
						<h3>새 일정 만들기</h3>
					</div>
					<div id="sch_intro_content">
						<div id="main_subject_div">
				       		<input type="text" id="main_subject" name="main_subject" placeholder="제목을 입력해 주세요">
				       </div>
				       <div id="trip_date_div">
				       		<input style="width: 75%; height:60px; font-size: 20px; margin-right: 5px; padding-left: 10px; border: solid 1px #ccc;" 
				       		type="text" id="datepicker" name="trip_start_date" readonly="readonly" placeholder="출발일">
				       		
				       		<input type="text" id="trip_date_num" name="trip_date_num" placeholder="여행일수">
				       </div>  
					</div>
					<div id="sch_intro_footer">
		                 <button type="submit" style="width:100%; height:60px; background-color: #f44336; border: solid 1px #f44336; font-size: 20px; color: #fff;">새 일정 만들기 <i class="fa fa-check spaceLeft"></i></button>
	                </div>
				</div>
			</div>
		
		</div><!-- container end -->
	</div><!-- sch_background end -->
</form>



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script src="resources/js/underscore.js"></script>
<script>
//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(4).addClass("active");

/* searchbar X */
$("#searchbar").css("display","none");

/* 달력 */
$('#datepicker').datepicker({	
    format: 'yyyy-mm-dd'
   
});

</script>

<%@ include file="footer.jsp" %>