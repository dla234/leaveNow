<%@ page contentType="text/html; charset=UTF-8"%>



    
    
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-gray" id="footer">
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>




<!-- script -->


<script>

	$(".w3-bar.w3-red.w3-card-2 a").eq(4).addClass("active");

</script>


</body>
</html>


<!-- LoginForm modal  -->
<div class="modal fade" id="login_modal" role="dialog">
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


<!-- SignUpForm modal -->

<div class="modal fade" id="signup_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
            
                <!-- header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <div >
    	               <h1>회원가입</h1>
                    </div>
                </div>
                
               
    <!-- contant -->   
   <div>
    <div class="col-md-12">
       
        <form class="form-horizontal">
            <br>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-6">
          <div class="input-group">
                <input class="form-control" id="inputEmail" type="email" placeholder="이메일" />
                <span class="input-group-btn">
                    <button class="btn btn-success">이메일 인증<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
            </div>
            <p class="help-block">이메일을 인증해 주세요.</p>
        </div>
        </div>
          
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
            
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
             </div>
          </div>
            
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputName" type="text" placeholder="이름">
          </div>
        </div>
            
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked/>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#" data-toggle="collapse" data-target="#demo">이용약관</a> 에 동의 합니다.
            </div>
          </div>
            
            <div class="form-group" align="center">
                        <div id="demo" class="collapse">
                            <div class="col-xs-12">
                                <textarea style="background-color: white; width: 350px; resize: none"
                                          rows="5" class="form-control" id="TextArea" readonly>
~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 이용약관 ~~~~~~~~~~~~~~~~~
                                </textarea>
                            </div>
                        </div>
            </div>
       
        </form>
         
        </div>

                <!-- footer -->
                <div class="modal-footer">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit" style="border-radius: 3px">회원가입<i class="fa fa-check spaceLeft"></i></button>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

