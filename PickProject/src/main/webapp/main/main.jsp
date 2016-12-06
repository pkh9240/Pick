<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="UTF-8">
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<!--     css        -->
<link rel="stylesheet" href="/main/main.css">
<link rel="stylesheet" href="/main/tagsly/tagsly.css">
<link rel="stylesheet" href="/node_modules/jquery-colorbox/colorbox.css">

</head>


<body>
 
	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<form>
					<div class="input-field">
						<input id="search" type="search" required> <label for="search"><i class="material-icons">search</i></label> <i class="material-icons">close</i>
					</div>
				</form>
			</div>
		</nav>
	</div>
	<div class="float-nav">
		<a href="#" class="menu-btn button-collapse" data-activates="slide-out">
			<ul>
				<li class="line"></li>
				<li class="line"></li>
				<li class="line"></li>
			</ul> <!--            <div class="menu-txt">menu</div>-->
		</a>
	</div>

	<ul id="slide-out" class="side-nav">
		<li>
			<div class="userView">
				<div class="background">
					<img src="../image/background.png">
				</div>
				<a href="#!user"> <img class="circle" src="/image/profile/${empty user.userPhoto?'defaultProfileImage.jpg' : user.userPhoto}">
				</a> <a href="#!name"> <span class="white-text name"> ${user.userName}</span>
				</a> <a href="#!email"> <span class="white-text email">${user.userEmail}</span>
				</a>
			</div>
		</li>
		<li><a href="#" id="myAccount_btn"><i class="material-icons">account_circle</i>My Account</a></li>
		<li><a href="#" id="myPick_btn"><i class="material-icons">playlist_add_check</i>My Pick</a></li>
		<li><a href="#" id="logout_btn"><i class="material-icons">exit_to_app</i>Logout</a></li>
		<li><div class="divider"></div></li>


		<li><a class="subheader">Filtering</a></li>
		<li><a href="#" id="filter_btn"><i class="material-icons">filter_list</i>Filtering</a></li>


		<li><div class="divider"></div></li>
		<li><a class="subheader">Add Pick</a></li>
		<li><a href="#" id="addPick_btn"><i class="material-icons">add_circle_outline</i>Add Pick</a></li>


		<li><div class="divider"></div></li>
		<li><a class="subheader">Admin Menu</a></li>
		<li><a href="#" id="adminPage_btn_user"><i class="material-icons">people</i>User</a></li>
		<li><a href="#" id="adminPage_btn_pick"><i class="material-icons">playlist_add_check</i>Pick</a></li>
		<li><a href="#" id="adminPage_btn_category"><i class="material-icons">list</i>Category</a></li>
	</ul>



	<div class="content">
		<div class="wrap">
			<div id="main" role="main">
				<ul id="tiles">
					<!-- These are our grid blocks -->
					<li id="pick10000">
						<!--하나의 컨텐츠 시작-->
						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card1.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>HOME</div>
								<h1 class='title'>어떤게 더 예뻐요?!</h1>
								<h2 class='sub_title'>인테리어 바꾸려는데 추천 해 주세요!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div> <!--하나의 컨텐츠 시작-->
					</li>
					<li id="pick10001">
						<!--하나의 컨텐츠 시작-->
						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card2.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>STUDY</div>
								<h1 class='title'>토익책 추천</h1>
								<h2 class='sub_title'>토익을 처음 준비해 보는데 어떤 책이 좋아요?!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div> <!--하나의 컨텐츠 시작-->
					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card2.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>study</div>
								<h1 class='title'>토익책 추천</h1>
								<h2 class='sub_title'>토익을 처음 준비해 보는데 어떤 책이 좋아요?!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card3.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>Ent</div>
								<h1 class='title'>재미있는 공연 추천!</h1>
								<h2 class='sub_title'>친구들이랑 공연보러 가려는데 요즘 뭐가 재밌어요?</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card4.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>food</div>
								<h1 class='title'>합정역 맛집 추천요!</h1>
								<h2 class='sub_title'>이따 합정에 점심 약속 있는데 맛집 좀 추천요!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>

					<li onclick="location.href='single-page.html';">
						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card5.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>car</div>
								<h1 class='title'>자동차 추천!</h1>
								<h2 class='sub_title'>차 뽑으려는데 추천해 주세요.</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card6.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>star</div>
								<h1 class='title'>누가 잘생겼나요?</h1>
								<h2 class='sub_title'>누가 제일 잘생겼는지 투표해 주세요.</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card7.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>travel</div>
								<h1 class='title'>여름 휴양지 추천</h1>
								<h2 class='sub_title'>여름휴가 계획 중인데 추천해 주세요!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card8.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>shopping</div>
								<h1 class='title'>생일선물 추천</h1>
								<h2 class='sub_title'>친구 생일선물로 운동화를 고르려는데 추천해 주세요</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>

					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card6.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>star</div>
								<h1 class='title'>누가 잘생겼나요?</h1>
								<h2 class='sub_title'>누가 제일 잘생겼는지 투표해 주세요.</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card1.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>home</div>
								<h1 class='title'>어떤게 더 예뻐요?</h1>
								<h2 class='sub_title'>인테리어 바꾸려는데 추천해 주세요!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card2.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>study</div>
								<h1 class='title'>토익책 추천</h1>
								<h2 class='sub_title'>토익을 처음 준비해 보는데 어떤 책이 좋아요?!</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<li onclick="location.href='single-page.html';">

						<div class='post-module'>
							<div class='thumbnail'>
								<div class='date'>
									<div class='day'>27</div>
									<div class='month'>Mar</div>
								</div>
								<img src='../image/card3.jpg'>
							</div>
							<div class='post-content'>
								<div class='category'>ent</div>
								<h1 class='title'>재미있는 공연 추천!</h1>
								<h2 class='sub_title'>친구들이랑 공연보러 가려는데 요즘 뭐가 재미있어요?</h2>
								<p class='description'>
									<a class="detailsub">PICK Detail</a> <br /> <a class="detailcon"> AGE : 10s, 20s, 30s<br />GENDER : Female
									</a>
								</p>
								<div class='post-meta'>
									<span class='timestamp'> <i class='fa fa-clock-o'></i> 6 mins ago
									</span> <span class='comments'> <i class='fa fa-comments'></i> <a href='#'>204 PICK</a>
									</span>
								</div>
							</div>
						</div>

					</li>
					<!-- End of grid blocks -->
				</ul>
			</div>
		</div>
	</div>

	<!---->
	<!---//End-content---->
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src='/main/main.js'></script>
	<!-- Compiled and minified JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>

	<!----wookmark-scripts---->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.1/imagesloaded.pkgd.min.js"></script>
	<script src="/main/jquery.wookmark.js"></script>

	<script src="/main/tagsly/tagsly.js"></script>

	<script src="/node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
	<script type="text/javascript">
   	
   		/* 회원정보 뷰  */
   		$("#myAccount_btn").on("click", function() {
			$.colorbox({
			
				fixed:"true",
   				top: "true",
				iframe : "true",
				href : "/user/getAccount",
				width : "510px",
				height : "800px",
				scrolling: false,
				closeButton:false,
				onClosed:function(){ 
					 location.href="/user/main";
				}
			});
		});
   		
   		
   		$("#filter_btn").on("click", function() {
			$.colorbox({
				top:"true",
				fixed:"true",
				iframe : "true",
				href : "/user/getFilter",
				width : "600px",
				height : "60%",
				closeButton:false,
				scrolling: false
				
			});
		});
   		
   		
   		/*관리자 페이지 */
   		$("a[id^=adminPage_btn]").on("click", function() {
   			var path=$(this).attr("id").replace("adminPage_btn_","");
   			
   			
   			$.colorbox({
				fixed:"true",
   				top: "true",
   				iframe : "true",
   				href : "/user/getAdminPageView/"+path,
   				width : "90%",
   				height : "90%",
   				top:true
   			});
   		});

   		/*로그아웃 버튼 */
   		$("#logout_btn").on("click", function() {
   			location.href="/user/logout";
   		});
   	

   		$("#myPick_btn").on("click", function() {
   			$.colorbox({
				fixed:"true",
   				top: "true",	
   				iframe:"true",
   				href : "/user/getMyPickView",
   				width : "63%",
   				height : "90%"
   			});
   		});
   		
   		
   	</script>
</body>

</html>