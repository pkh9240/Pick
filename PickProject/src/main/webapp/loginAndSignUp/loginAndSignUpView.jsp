<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Material Compact Login Animation</title>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&subset=latin,latin-ext'>
<link rel="stylesheet" href="loginAndSignUpView.css">
<link rel="stylesheet"
	href="../node_modules/jquery-colorbox/colorbox.css">

</head>

<body>



	<div class="container">
		<div class="info">
			<h1>Welcome</h1>
			<span>Made with <i class="fa fa-heart"></i> by <a
				href="http://andytran.me">brad cha</a></span>
		</div>
	</div>
	<div class="form">
		<div class="thumbnail">
			<img
				src="../image/W_pick.png" />
		</div>
		<form class="register-form">
			<input name="userEmail" type="text" placeholder="email" />
			 <input name="userPassword"  type="password" placeholder="password" />
			  <input name="userPasswordConfirm"  type="password" placeholder="password confirm" />
			  
			<button id="register_btn">create</button>
			<p class="message">
				Already registered? <a href="#">Sign In</a>
			</p>
		</form>
		<form class="login-form">
			<input id="userEmail" name="userEmail" type="text" placeholder="email"  value=""/> 
			<input id="userPassword" name="userPassword" type="password" placeholder="password" value="" />
			<button id="login_btn">login</button>
			<p class="message">
				Not registered? <a href="#">Create an account</a>
			</p>
		</form>
	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="../node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
	
	<script src="loginAndSignUpView.js"></script>
	<script type="text/javascript">
	$(function(){
 	$("#login_btn").on("click",function(){
			$(".login-form").attr("method", "POST").attr("action","/user/login").submit();
		}); 
		
		
	
			
		
	});
		
	</script>

</body>
</html>
