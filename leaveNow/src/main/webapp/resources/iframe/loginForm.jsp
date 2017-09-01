<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/Newstyle.css?">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
<style>
.btn span.fa {
	opacity: 0;
}
.btn.active span.fa {
	opacity: 1;
}
</style>

</head>
<body>

<div id="loginForm" >
	<div class="modal-dialog modal-sm">

		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" style="font-size: 30px">로그인</h4>
			</div>
			<div class="modal-body">

				<form id="loginfrm" action="login.do" method="post" onsubmit="alert('성공')">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input id="email"
							type="text" class="form-control" name="email"
							placeholder="이메일 주소">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span> <input id="password"
							type="password" class="form-control" name="password"
							placeholder="비밀번호">
					</div>
					<br>
					<div class="col-sm-12" data-toggle="buttons" style="position: relative; padding-left: 0px;">
                                <label class="btn btn-warning active" style="border-radius: 3px">
                                    <input id="agree" type="checkbox" autocomplete="off">
                                    <span class="fa fa-check"></span>
                                </label> &nbsp; 아이디 저장하기
                    </div>
					<br>
					
				</form>
			</div>
			<div class="modal-footer"
				style="position: relative; padding-right: 75px;">
				<button type="button" id="logint_submit" class="btn btn-default"
					data-dismiss="modal" style="border-radius: 3px" data-toggle="modal"
					data-target="#signup_modal">회원가입</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="border-radius: 3px">로그인</button>
			</div>
			<div align="right"
				style="position: relative; padding-right: 15px; padding-bottom: 8px;">
				<a href="" style="color: #595959;">비밀번호 찾기</a>
			</div>
		</div>

	</div>
</div>




</body>
</html>





