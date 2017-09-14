<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="../../resources/js/myscript.js"></script>
<link rel="stylesheet" href="../../resources/css/mystyle.css">
</head>

<div id="stylized" class="myform">
<form id="form" name="form" method="post" action='modify'>
<h1>회원 정보 수정</h1>
<p>회원 수정 할 정보를 입력해주세요</p>

<label>Email
<span class="small">이메일 주소</span>
</label>
<input type="text" name="email" id="email" value="${email}" style="background-color: #e2e2e2;" readonly/>

<label>Password
<span class="small">비밀번호</span>
</label>
<input type="password" name="password" id="password" />

<label>Password Check
<span class="small">비밀번호 확인</span>
</label>
<input type="password" name="repassword" id="repassword" />

<label>Name
<span class="small">이름</span>
</label>
<input type="text" name="name" id="name" />

<label>Phone
<span class="small">전화번호</span>
</label>
<input type="text" name="phone" id="phone" />

<button type="button" onclick="memberCheck(this.form)">수정</button>
<div class="spacer"></div>

</form>
</div>