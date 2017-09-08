<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>실험용 회원가입</title>

</head>
<body>
<form action="login" method="post">
	email:<input type="text" name="email"/>
	password:<input type="text" name="password"/>
	<input type="submit" value="로그인"/>
	<input type="hidden" name="certification" value="${certification }">
	<input type="hidden" name="code" value="${code }">
</form>
${email}


</body>
</html>