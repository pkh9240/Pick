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
						<input id="search" type="search" required>
						<label for="search"> <i class="material-icons">search</i>
						</label> <i class="material-icons">close</i>
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
			</ul>
		</a>
	</div>

	<ul id="slide-out" class="side-nav">
		<li>
			<div class="userView">
				<div class="background" style="width: 360px">
					<img src="/image/main/mainBackground3.png" style="width: 100%; height: auto">
				</div>


				<img class="circle" src="/image/profile/thumbnail/${empty user.userPhoto?'defaultProfileImage.jpg' : user.userPhoto}"> <span class="white-text name"> ${user.userName}</span> <span class="white-text email">${user.userEmail}</span>


			</div>
		</li>


		<!--관리자 및 일반 유저  -->






		<li><a href="#" id="myAccount_btn">
				<i class="material-icons">account_circle</i>My Account
			</a></li>
		<li><a href="#" id="myPick_btn">
				<i class="material-icons">playlist_add_check</i>My Pick
			</a></li>
		<li><a href="#" id="filter_btn">
				<i class="material-icons">filter_list</i>Filtering
			</a></li>
		<li><a href="#" id="addPick_btn">
				<i class="material-icons">add_circle_outline</i>Add Pick
			</a></li>

		<!-- 관리자 메뉴 -->

		<li><div class="divider"></div></li>
		<c:if test="${user.userType=='admin'}">

			<li><a class="subheader">Admin Menu</a></li>
			<li><div class="divider"></div></li>

			<li><a href="#" id="adminPage_btn_user">
					<i class="material-icons">people</i>User
				</a></li>
			<li><a href="#" id="adminPage_btn_pick">
					<i class="material-icons">playlist_add_check</i>Pick
				</a></li>
			<li><a href="#" id="adminPage_btn_category">
					<i class="material-icons">list</i>Category
				</a></li>
			<li><div class="divider"></div></li>
		</c:if>

		<li><a href="#" id="logout_btn">
				<i class="material-icons">exit_to_app</i>Logout
			</a></li>
	</ul>



	<div class="content">
		<div class="wrap">
			<div id="main" role="main">
				<ul id="tiles">
					<c:forEach var="vote" items="${voteList}">


						<li id="getVote_${vote.voteNo}">
							<div class='post-module'>
								<div class='thumbnail'>
									<div class='date'>
										<div class='day'>${vote.endDate.toString().split(' ')[2]}</div>
										<div class='month'>${vote.endDate.toString().split(' ')[1]}</div>
									</div>
									<!--일단 첫번째 선택지 사진  -->
									<img src='/image/vote/original/${vote.choiceList.get(0).photo}'>
								</div>
								<div class='post-content'>
									<div class='category'>${vote.voteCategory}</div>
									<div class='title'>${vote.voteTitle}</div>
									<div class='description'>
										<a class="detailsub">PICK Detail</a>
										<br />
										<div class="detailcon">
											AGE :
											<c:if test="${vote.voteAuthority.one==true &&vote.voteAuthority.two==true &&
															   vote.voteAuthority.three==true &&vote.voteAuthority.four==true &&
															   vote.voteAuthority.five==true &&vote.voteAuthority.six==true }">
												 All<br />
											</c:if>
											<c:if test="${vote.voteAuthority.one!=true || vote.voteAuthority.two!=true ||
															   vote.voteAuthority.three!=true || vote.voteAuthority.four!=true ||
															   vote.voteAuthority.five!=true || vote.voteAuthority.six!=true }">
												
												     ${vote.voteAuthority.one==true?'10대 ':''}
													 ${vote.voteAuthority.two==true?'20대 ':''}
													 ${vote.voteAuthority.three==true?'30대 ':''}
													 ${vote.voteAuthority.four==true?'40대 ':''}
													 ${vote.voteAuthority.five==true?'50대 ':''}
													 ${vote.voteAuthority.six==true?'60대 ':''} <br />

											</c:if>

											GENDER :
											<c:if test="${vote.voteAuthority.male==true && vote.voteAuthority.female==true}">
													All<br />
											</c:if>
											<c:if test="${vote.voteAuthority.male!=true || vote.voteAuthority.female!=true}">
														 ${vote.voteAuthority.male==true?'여자 ':''}
														  ${vote.voteAuthority.female==true?'남자 ':''}<br />
											</c:if>


											TYPE :${vote.voteType}
										</div>
									</div>
									<!-- 투표의 선택지에서 총 투표수 가져오기   -->
									<c:set var="totalCount" value="0"/>
									<c:forEach var="choice" items="${vote.choiceList}">
											<c:set var="totalCount" value="${totalCount+choice.choiceCount}"/>
									</c:forEach>
									
									<div class='post-meta'>${totalCount} PICK</div>
								</div>
							</div>
						</li>


					</c:forEach>

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

		/*투표 창 */
		
		$("li[id^=getVote]").on("click",function(){
			var voteNo = $(this).attr("id").replace("getVote_","");
			
			$.colorbox({
				closeButton : "false",
				top : "true",
				iframe : "true",
				href : "/vote/getVote/"+voteNo,
				width : "550px",
				height : "550px"
			});
		});
	
		
		/* 회원정보 뷰  */
		$("#myAccount_btn").on("click", function() {
			$.colorbox({
				closeButton : "false",
				top : "true",
				iframe : "true",
				href : "/user/getAccount",
				width : "360px",
				height : "600px",
				scrolling : false
			});
		});

		$("#filter_btn").on("click", function() {
			$.colorbox({
				top : "true",
				fixed : "true",
				iframe : "true",
				href : "/user/getFilter",
				width : "400px",
				height : "600px",
				closeButton : false,
				scrolling : false

			});
		});

		/*관리자 페이지 */
		$("a[id^=adminPage_btn]").on("click", function() {
			var path = $(this).attr("id").replace("adminPage_btn_", "");

			$.colorbox({
				top : "true",
				iframe : "true",
				href : "/user/getAdminPageView/" + path,
				width : "90%",
				height : "95%",
				top : true
			});
		});

		/*로그아웃 버튼 */
		$("#logout_btn").on("click", function() {
			location.href = "/user/logout";
		});

		$("#myPick_btn").on("click", function() {
			$.colorbox({
				fixed : "true",
				top : "true",
				iframe : "true",
				href : "/user/getMyPickView",
				width : "63%",
				height : "90%"
			});
		});
		
		/*투표 추가 버튼*/
		
		$("#addPick_btn").on("click",function(){
			$.colorbox({
			
				top : "true",
				iframe : "true",
				href : "/vote/addVote",
				width : "580px",
				height : "600px",
				onClosed : function() {
					location.href = "/user/main";
				}
			});
		});
	
			
		/*이미지 사이즈에 맞게 post-module 크기 조정  */
			$(".post-module .thumbnail img").each(function (index,item ) {
				
				var realWidth = item.width;
				var realHeight = item.height;
				
				var mok =  realWidth/200; //가로 크기로 나눔 
			
				var resizedWidth = realWidth/mok;
				var resizedHeight = realHeight/mok;
			
				$(this).parent().parent().height(resizedHeight+75);
			});
			

	        
	   


		
	</script>
</body>

</html>