<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/pick/pickMulti.css">
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
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
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;Pick</a>
			</div>
		</nav>
	</div>
	<div id="container">
		<div class="row">
			<div class="col  s12 center">
				<br />
				<div class="card-panel">
					<!--  -->
					<input id="voteMax" type="hidden" value="${vote.voteMax}" />
					<!--  -->
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
				<c:set var="rowCount" value="0" />
				<c:set var="count" value="0" />
				<c:forEach var="choice" items="${vote.choiceList}">
					<div class="col s4">
						<input type="checkbox" id="cb_${choice.choiceNo}" name="choiceNo" value="${choice.choiceNo}"/>
						<label for="cb_${choice.choiceNo}" class="tooltipped" data-position="top" data-delay="50" data-tooltip="${choice.content}"> <img src="/image/vote/thumbnail/${choice.photo}" />
						</label>
					</div>
					<c:set var="count" value="${count+1}" />

					<c:if test="${count==3}">
						<c:set var="rowCount" value="${rowCount+1}" />
						<c:set var="count" value="0" />

						<c:if test="${ vote.choiceList.size()/3  != rowCount}">
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />

						</c:if>
					</c:if>

				</c:forEach>

				<br /> <br /> <br /> <br /> <br /> <br />

			</form>
		</div>
	</div>

	<div class="row">
		<br /> <br /> <br />

		<div class="col s6">
			<i id="info_btn" class="material-icons right tooltipped"  data-html="true" data-position="top" data-delay="50" data-tooltip=" <div>상세정보 <br/>종료일 : ${vote.endDate}</div><br/>">info_outline</i> <i id="share_btn" class="material-icons right tooltipped" data-position="top" data-delay="50" data-tooltip="투표 공유 하기 ">share</i>
		</div>
		<div id="pick_btn" class="btn waves-effect waves-light col offset-s1 s4 left" >
			P I C K <i class="material-icons right">done</i>
		</div>
		<div></div>

	</div>


	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

	<script type="text/javascript">
		$('#pick_btn').attr("disabled","disabled");
		/*선택 개수 제한 */
		$("input:checkbox[name='choiceNo']").on("change",function(){
			var checkedBoxCount = $("input:checkbox[name='choiceNo']:checked").length;
			
			if(checkedBoxCount<1){
				$('#pick_btn').attr("disabled","disabled");
			}else{
				if(authorityCheck == 2){
				$('#pick_btn').removeAttr("disabled");
				}
			}
			
		
			var voteMax = $("#voteMax").val();
			if(checkedBoxCount > voteMax){
				this.checked=false;
				swal({
		    			title:"최대 선택할 수 있는 선택지 개수는"+voteMax+"개 입니다",
		    			confirmButtonColor : "#ED2553"
		    	});
		    	return;
		    }
		});
		
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
						url : "/vote/voteMultiChoice",
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
		
		
		
	</script>


</body>

</html>