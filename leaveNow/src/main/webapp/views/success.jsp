<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 창</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>
<body>

<c:if test="${sessionScope.email != null}">
${email },${m_code}
<form action="./logout">
	<input type="submit" value="로그아웃"/>
</form>

<a href="./modifyMemberForm.jsp">정보수정</a>
<a href="secession">회원탈퇴</a>
</c:if>

<c:if test="${m_code == 'FF'}">
	<a href="./re_certification">인증코드 재요청</a>
	<button class="re">인증코드 재요청</button>
</c:if>

<script type="text/javascript">
 
 	$(".re").click(function(){
 		$.ajax({
 			url:"./re_certification",
 			type:"POST",
 			success:function(data){
 				alert(data);
 			},
 			error:function(e){
 				alert(e.responseText);
 			}
 		});
 	});
</script>
</body>
</html>