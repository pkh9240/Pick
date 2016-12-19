<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/pick/pickOne.css">
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<link rel="stylesheet" href="/node_modules/jquery-colorbox/colorbox.css">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
</head>

<body>
	<!--hidden Data-->
	<input id="voteNo" type="hidden" value="${vote.voteNo}">
	<input id="male" type="hidden" value="${vote.voteAuthority.male}">
	<input id="female" type="hidden" value="${vote.voteAuthority.female}">
	<input id="one" type="hidden" value="${vote.voteAuthority.one}">
	<input id="two" type="hidden" value="${vote.voteAuthority.two}">
	<input id="three" type="hidden" value="${vote.voteAuthority.three}">
	<input id="four" type="hidden" value="${vote.voteAuthority.four}">
	<input id="five" type="hidden" value="${vote.voteAuthority.five}">
	<input id="six" type="hidden" value="${vote.voteAuthority.six}">
	
	<input id="userAge" type="hidden" value="${user.userAge}">
	<input id="userGender" type="hidden" value="${user.userGender}">
	
	
	<!-------------->
	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;투표 하기</a>
			</div>
		</nav>
	</div>

	<div id="container">
		<div class="row">
			<div class="col s12 center">
				<br />
				<div class="card-panel">

					<div id="voteTitle">
						<span class="flow-text">${vote.voteTitle}</span>
					</div>
					<br />
					<div id="voteContent" id="voteContent">${vote.voteContent}</div>
				</div>
			</div>
		</div>
		<div class="row">
			<form id="pick_form">
				<div class="col s5">
					<input type="radio" id="cb1" name="choiceNo" value="${vote.choiceList.get(0).choiceNo}" />
					<label for="cb1" class="tooltipped" data-position="top" data-delay="50" data-tooltip="${vote.choiceList.get(0).content}"> <img src="/image/vote/thumbnail/${vote.choiceList.get(0).photo}" />


					</label>
				</div>


				<div id="center_vs" class="col s2">VS</div>
				<div class="col s5">
					<input type="radio" id="cb2" name="choiceNo" value="${vote.choiceList.get(1).choiceNo}" />
					<label for="cb2" class="tooltipped" data-position="top" data-delay="50" data-tooltip="${vote.choiceList.get(1).content}"> <img src="/image/vote/thumbnail/${vote.choiceList.get(1).photo}" /></label>
				</div>

			</form>
		</div>
		<div class="row">
			<br />
			<div class="col s6">
				<i id="info_btn" class="material-icons right tooltipped" data-position="top" data-delay="50" data-tooltip="상세 정보">info_outline</i> <i id="share_btn" class="material-icons right tooltipped" data-position="top" data-delay="50" data-tooltip="투표 공유 하기 ">share</i>
			</div>
			<div id="pick_btn" class="btn waves-effect waves-light col offset-s1 s4 left">
				P I C K <i class="material-icons right">done</i>
			</div>
			<div></div>

		</div>

	</div>


	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
		<script src="/node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script type="text/javascript">
	/*  */	
	var authorityCheck=0;

	var userAge = $("#userAge").val();
	var userGender = $("#userGender").val();

	if($("#male").val()=='true' ){if(userGender=='male'){authorityCheck++}}
	if($("#female").val()=='true'){if(userGender=='female'){authorityCheck++}}
	if($("#one").val()=='true' ){if(userAge=='10s'){authorityCheck++}}
	if($("#two").val()=='true'){if(userAge=='20s'){authorityCheck++}}
	if($("#three").val()=='true' ){if(userAge=='30s'){authorityCheck++}}
	if($("#four").val()=='true'){if(userAge=='40s'){authorityCheck++}}
	if($("#five").val()=='true' ){if(userAge=='50s'){authorityCheck++}}
	if($("#six").val()=='true'){if(userAge=='60s'){authorityCheck++}}
	
	if(authorityCheck != 2){
		$("#pick_btn").attr("disabled","disabled");
		$("#pick_btn").text("투표불가");
	}
				
	
	
	
	
			$('#pick_btn').attr("disabled","disabled");
			$("input:radio[name='choiceNo']").on("change",function(){
				var checkedBoxCount = $("input:radio[name='choiceNo']:checked").length;
				
				if(checkedBoxCount<1){
					$('#pick_btn').attr("disabled","disabled");
				}else{
					if(authorityCheck == 2){
					$('#pick_btn').removeAttr("disabled");
					}
					}
			});
		
	
	
			$("#pick_btn").on("click",function(){
					var voteNo = $("#voteNo").val();
					
					var form = new FormData($("#pick_form")[0]);

					swal({
						title : "투표 하시겠습니까?",
						type : "info",
						confirmButtonColor : "#ED2553",
						showCancelButton : true,
						closeOnConfirm : false,
						showLoaderOnConfirm : true,

					}, function(isConfirm) {
						if (isConfirm) {
							$.ajax({
								type : "post",
								url : "/vote/voteVersus",
								processData : false,
								contentType : false,
								data : form,
								success : function(data) {
									if(data=='true'){/*이미 참여한 경우 */
										swal({
											title :"이미 투표에 참여하셨습니다.결과창으로 이동 하시겠습니까?",
											confirmButtonColor : "#ED2553",
											showCancelButton: true,
											showLoaderOnConfirm : true
										},function(isConfirm){
											if(isConfirm){
												parent.$.colorbox({
													closeButton : "false",
													top : "true",
													iframe : "true",
													href : "/vote/getResult/"+voteNo,
													width : "1000px",
													height : "600px"} )
											}else{
												parent.$.colorbox.close();
											}
										
										});
								
									}
									else{
									setTimeout(function() {
										swal({
											title :" 투표 되었습니다.결과를 확인 하시겠습니까 ?",
											confirmButtonColor : "#ED2553",
											showCancelButton: true,
											showLoaderOnConfirm : true
										},function(isConfirm){
											if(isConfirm){
												parent.$.colorbox({
													closeButton : "false",
													top : "true",
													iframe : "true",
													href : "/vote/getResult/"+voteNo,
													width : "1000px",
													height : "600px"} )
											}else{
												parent.$.colorbox.close();
											}
										
										});
									}, 3000);
									}
								}
							});
						}

					});
				});
					
					
		
		     $('.tooltipped').tooltip({delay: 50});
	
		
	</script>
</body>

</html>