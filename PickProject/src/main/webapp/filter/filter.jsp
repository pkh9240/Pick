<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/interest/interestView.css">
<link rel="stylesheet" href="/fontello-51c93eec/css/close.css">
<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
</head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

<body>
	<div id="container">
		<div class="row">
			<div class="col s12">
				<span class="flow-text">Filtering</span>
			</div>
			<form id="filter-form">
				<div class="input-field col s12">
					<select name="userAge" multiple>
						<option value="" disabled selected>Age</option>
						<option value="10s">10대</option>
						<option value="20s">20대</option>
						<option value="30s">30대</option>
						<option value="40s">40대</option>
						<option value="50s">50대</option>
						<option value="60s">60대</option>
					</select> <label>Age</label>
				</div>
				<div class="input-field col s12">
					<select name="userGender">
						<option value="" disabled selected>Gender</option>
						<option value="all">모두</option>
						<option value="male">남자</option>
						<option value="female">여자</option>
					</select> <label>Gender</label>
				</div>
				<div class="input-field col s12">
					<select name="interestList" multiple>
						<option value="" disabled>Category</option>
						<c:forEach var="interest" items="${interestList}">
							<option value="${interest.interestNo}" data-icon="/image/interest/${interest.interestPhoto}" class="circle">${interest.content}</option>


						</c:forEach>
					</select> <label>Category</label>
				</div>
			</form>
			<div class="col s6 offset-s6">
				<button class="btn waves-effect waves-light" id="filter_btn">
					Filtering <i class="material-icons right">send</i>
				</button>
			</div>
		</div>
		<!---->
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

		<script src='/interest/interestView.js'></script>


		<script type="text/javascript">
			$("#filter_btn").on("click",function() {

								
								if ($('select[name="userGender"] option:selected').val() == '') {
									swal({
										title : "성별을 선택해주세요.",
										confirmButtonColor : "#ED2553"
									});
									return;
								}
								if ($('select[name="interestList"] option:selected').prevAll().size() < 3) {
									swal({
										title : "관심사를 3개이상 선택해주세요.",
										confirmButtonColor : "#ED2553"
									});
									return;
								}

						/* 		$("#filter-form").attr("target", "_parent").attr("action", "/user/addUser").attr("method", "post").submit(); */

							});
		</script>
	</div>
</body>

</html>