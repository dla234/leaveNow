<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<style>
#sch_login {
	/* border: solid 1px #ccc; */
	height: 350px;
	padding-left:0px ! important;
}

#sch_login_header {
	height:50px;
	width: 100%;
	height: 100px;
	padding: 0 10px 0 10px;
}	

#sch_login_header>h3 {
	height:50px;
	border-bottom: solid 1px #ccc;
	margin-left:0px ! important;
	margin: 30px;
	position: absolute;
	text-align: center;
	width: 96%;
}

#sch_login_content {
	
}

#sch_login_content_div {
	width: 100%; 
	margin-top: 30px;
}

#sch_login_content_div>input {
	width: 99%; 
	height:60px; 
	font-size: 20px; 
	margin-left:10px;
	padding-left: 10px;
	border: solid 1px #ccc;
	margin-bottom: 10px;
}



#sch_login_footer>button{
	margin-top:30px;
	width: 83%; 
	height:60px; 
	font-size: 20px; 
	margin-left:10px;
	padding-left: 10px;
	background-color: #f44336; 
	border: solid 1px #f44336; 
	font-size: 20px; 
	color: #fff;
}
</style>


<form action="member/loginsch?url=${pageContext.request.servletPath }">
	<div style="background: #fff;">
		<div class="container" style="position: relative; margin-top: 100px; margin-bottom: 130px;">
			<div class="row">
				<div id="sch_login" class="col-md-offset-3 col-md-6 col-md-offset-3">
					<div id="sch_login_header">
						<h3>로그인</h3>
					</div>
					<div id="sch_login_content">
						<div id="sch_login_content_div">
				       		<input type="text" id="email" name="email" placeholder="메일을 입력해 주세요">
				       		<input type="password" id="passwd" name="password" placeholder="비밀번호를 입력해주세요">
				       </div> 
					</div>
					<div id="sch_login_footer" align="center">
		                 <button type="submit">로그인 <i class="fa fa-check spaceLeft"></i></button>
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