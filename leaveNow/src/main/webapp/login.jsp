<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 배경색 -->
<div id="sch_background">
<form action="/member/login">
이메일:<input type="text" name="email"/>
비밀번호:<input type="text" name="password"/>
<input type="submit" value="로그인"/>
<input type="button" value="회원가입"/>
</form>


</div><!-- end -->


<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/js/bootstrap-datepicker.kr.js"></script>
<script src="resources/js/jquery-scrolltofixed.js"></script>
<script>

//navbar active
$(".w3-bar.w3-red.w3-card-2 a").eq(3).addClass("active");

</script>


<%@ include file="../footer.jsp" %>
