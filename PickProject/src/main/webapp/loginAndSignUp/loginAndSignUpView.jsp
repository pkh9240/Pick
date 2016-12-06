<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Material Compact Login Animation</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&subset=latin,latin-ext'>
<link rel="stylesheet" href="loginAndSignUpView.css">
<link rel="stylesheet" href="/node_modules/jquery-colorbox/colorbox.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

</head>

<body>
 


	<div class="container">
		<div class="info">
			<h1>Welcome</h1>
			<span>Made with <i class="fa fa-heart"></i> by <a href="http://andytran.me">brad cha</a></span>
		</div>
	</div>
	<div class="form">
		<div class="thumbnail">
			<img src="../image/W_pick.png" />
		</div>
		<div class="register-form tog">
			<input id="registerUserEmail" name="userEmail" type="text" placeholder="email" />
			<input id="registerUserPassword" name="userPassword" type="password" placeholder="password" />
			<input id="registerUserPasswordConfirm" name="userPasswordConfirm" type="password" placeholder="password confirm">

			<button id="register_btn">create</button>
			<p class="message">
				Already registered?
				<a href="#">Sign In</a>
			</p>
		</div>
		<div class="login-form tog">
			<input id="userEmail" name="userEmail" type="text" placeholder="email" value="" />
			<input id="userPassword" name="userPassword" type="password" placeholder="password" value="" />

			<button id="login_btn">login</button>
			<p class="message">
				Not registered?
				<a href="#">Create an account</a>
			</p>
		</div>
	</div>

	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="/node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

	<script src="loginAndSignUpView.js"></script>
	<script type="text/javascript">
		$(function() {

			$("#login_btn").on("click", function() {
				var user = {
					"userEmail" : $("#userEmail").val(),
					"userPassword" : $("#userPassword").val()
				};
				$.ajax({
					url : "/user/login",
					type : 'POST',
					accept : "application/json",
					contentType : "application/json; charset=utf-8",
					data : JSON.stringify(user),
					dataType : "json",
					success : function(data) {
						var loginCheck = data.loginCheck;
						if (loginCheck == 'success') {
							location.href = "/user/loginSuccess";

						} else if (loginCheck == 'passwordError') {
							swal({
								title : "비밀번호가 일치하지 않습니다.",
								confirmButtonColor : "#ED2553"
							});
							$("#userPassword").val("");

						} else {
							swal({
								title : "해당 이메일이 존재하지 않습니다.",
								confirmButtonColor : "#ED2553"
							});
							$("#userEmail").val("");
							$("#userPassword").val("");

						}

					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert("Error");
					}
				});

			});

			/* 회원 가입 버튼 */
			$("#register_btn")
					.on(
							"click",
							function() {

								if ($("#registerUserPassword").val() != $(
										"#registerUserPasswordConfirm").val()) {
									swal({
										title : "비밀번호가 일치하지 않습니다.",
										confirmButtonColor : "#ED2553"
									});
									return;
								}

								var user = {
									"userEmail" : $("#registerUserEmail").val(),
									"userPassword" : $("#registerUserPassword")
											.val()
								};

								$
										.ajax({
											url : "/user/checkDuplication",
											type : 'POST',
											accept : "application/json",
											contentType : "application/json; charset=utf-8",
											data : JSON.stringify(user),
											dataType : "json",
											success : function(data) {
												if (data.isDuplicated == true) {
													swal({
														title : "이미 존재하는 이메일입니다.",
														confirmButtonColor : "#ED2553"
													});
													$("#registerUserEmail")
															.val("");
												} else {
													/*중복이 아닐 경우 상세 정보선택 창 팝업 */
													$
															.colorbox({
																iframe : true,
																scrolling : false,
																innerWidth : '500',
																innerHeight : '800',
																href : "/user/getDetailInfomationSelectView",
																onClosed : function() {

																}
															});

												}
											},
											error : function(jqXHR, textStatus,
													errorThrown) {
												swal("Error");
											}

										});
							});
		});
	</script>

</body>
</html>
