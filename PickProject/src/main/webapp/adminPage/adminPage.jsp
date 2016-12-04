<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="/node_modules/jquery-colorbox/colorbox.css">
<link rel="stylesheet" href="/adminPage/adminPage.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<style>
#modal1 {
	width: 30% !important;
	height: 80% !important;
}
</style>
</head>

<body>
	<div class="row">
		<div class="col s12">
			<ul class="tabs">
				<li class="tab col s3"><a href="#AdminPick">Admin Pick</a></li>
				<li class="tab col s3"><a href="#Feed">Feed</a></li>
				<li class="tab col s2"><a href="#UserInfo">UserInfo</a></li>
				<li class="tab col s3"><a href="#Category">Category</a></li>
			</ul>
		</div>
		<!--    User Info-->
		<div id="UserInfo" class="col s12">
			<div class="row">
				<div class="col s12">
					<div class="card material-table">
						<div class="table-header">
							<span class="table-title">USER</span>
							<div class="actions">
								<a href="#"
									class="search-toggle waves-effect btn-flat nopadding"> <i
									class="material-icons">search</i></a>
							</div>
						</div>
						<table class="datatable">
							<thead>

								<tr>

									<th data-field="Email">Email</th>
									<th data-field="Name">Name</th>
									<th data-field="Gender">Gender</th>
									<th data-field="Age">Age</th>
									<th data-field="Password">Password</th>
								</tr>

							</thead>
							<tbody>
								<c:forEach var="user" items="${userList}">

									<tr id="getUser_${user.userNo}" style="cursor: pointer;">
										<td>${user.userEmail}</td>
										<td>${user.userName}</td>
										<td>${user.userGender=='male'?'남자':'여자'}</td>
										<td>${user.userAge.replace('s','대')}</td>
										<td>${user.userPassword}</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="AdminPick" class="col s12">
			<!--   AdminPick     -->
			<div class="row">
				<div class="col s12">
					<div class="card material-table">
						<div class="table-header">
							<span class="table-title">Admin Pick</span>
							<div class="actions">
								<a href="#"
									class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a>
							</div>
						</div>
						<table class="datatable">
							<thead>
								<tr>
									<th data-field="UserName">UserName</th>
									<th data-field="Age">Age</th>
									<th data-field="Category">Category</th>
									<th data-field="Subject">Subject</th>
									<th data-field="PickType">PickType</th>
									<th data-field="StartDate">StartDate</th>
									<th data-field="EndDate">EndDate</th>
									<th data-field="PicnNum">PickNum</th>
									<th data-field="Count">Count</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Alvin</td>
									<td>13</td>
									<td>Computer</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>VS</td>
									<td>16.08.03</td>
									<td>16.12.04</td>
									<td>239</td>
									<td>1923</td>
								</tr>
								<tr>
									<td>Kevin</td>
									<td>53</td>
									<td>Culture</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>MULTI</td>
									<td>16.06.02</td>
									<td>16.12.31</td>
									<td>912</td>
									<td>9348</td>
								</tr>
								<tr>
									<td>Lisa</td>
									<td>26</td>
									<td>Society</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>YN</td>
									<td>16.02.03</td>
									<td>16.12.13</td>
									<td>573</td>
									<td>3958</td>
								</tr>
								<tr>
									<td>GD</td>
									<td>94</td>
									<td>IT</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>YN</td>
									<td>16.03.01</td>
									<td>17.02.10</td>
									<td>459</td>
									<td>928</td>
								</tr>
								<tr>
									<td>Alvin</td>
									<td>25</td>
									<td>Computer</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>VS</td>
									<td>16.08.03</td>
									<td>16.12.04</td>
									<td>239</td>
									<td>1923</td>
								</tr>
								<tr>
									<td>Kevin</td>
									<td>84</td>
									<td>Culture</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>MULTI</td>
									<td>16.06.02</td>
									<td>16.12.31</td>
									<td>912</td>
									<td>9348</td>
								</tr>
								<tr>
									<td>Lisa</td>
									<td>64</td>
									<td>Society</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>YN</td>
									<td>16.02.03</td>
									<td>16.12.13</td>
									<td>573</td>
									<td>3958</td>
								</tr>
								<tr>
									<td>GD</td>
									<td>39</td>
									<td>IT</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>YN</td>
									<td>16.03.01</td>
									<td>17.02.10</td>
									<td>459</td>
									<td>928</td>
								</tr>
								<tr>
									<td>Alvin</td>
									<td>45</td>
									<td>Computer</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>VS</td>
									<td>16.08.03</td>
									<td>16.12.04</td>
									<td>239</td>
									<td>1923</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!--  Message      -->
		<div id="Feed" class="col s12">
			<div class="row">
				<div class="col s12">
					<div class="card material-table">
						<div class="table-header">
							<span class="table-title">FEED</span>
							<div class="actions">
								<a href="#"
									class="search-toggle waves-effect btn-flat nopadding"> <i
									class="material-icons">search</i></a>
							</div>
						</div>
						<table class="datatable">
							<thead>
								<tr>
									<th data-field="UserName">UserName</th>
									<th data-field="FeedSubject">FeedSubject</th>
									<th data-field="Content">Content</th>
									<th data-field="Date">Date</th>
									<th data-field="Check">Check</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Alvin</td>
									<td>PickFormError</td>
									<td>iMac vs SAMSUNG PC</td>
									<td>16.11.01</td>
									<td>NO</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!--Catrgory Info -->
		<div id="Category" class="col s12">
			<div class="row">
				<div class="col offset-s2 s8">
					<div class="card material-table">
						<div class="table-header">
							<span class="table-title">Category</span>
							<div class="actions">
								<a href="#modal1"
									class="modal-trigger waves-effect btn-flat nopadding"><i
									class="material-icons" id="cat">person_add</i></a> <a href="#"
									class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a>
							</div>
						</div>
						<table class="datatable">
							<thead>
								<tr>

									<th data-field="#">Content</th>
									<th data-field="#">Count</th>
									<th data-field="#"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="interest" items="${interestList}">
									<tr style="cursor: pointer;">
										<td>${interest.content}</td>
										<td>개수 또는 이미지</td>
										<td><button
												class="btn waves-effect waves-light btn-small">Delete
											</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Trigger -->
		<!-- Modal Structure -->
		<div id="modal1" class="modal">
			<div class="modal-content">
				<div class="form">
					<div>
						<h1 id="my">ADD</h1>
						<h1 id="account">Category</h1>
					</div>
					<form id="add_interest_form">
						<div class="preview img-wrapper"></div>
						<div class="file-upload-wrapper">
							<input type="file" name="interestImage" class="file-upload-native"
								accept="image/*" /> <input type="text" disabled
								placeholder="upload" class="file-upload-text" />
						</div>


						<div class="row">
							<div class="input-field col offset-s2 s8">
								<input name="content" id="icon_prefix" type="text"
									class="validate"> <label for="icon_prefix">Category
									Name</label>
							</div>
						</div>

						<div id="add_interest_btn"
							class="btn waves-effect waves-light col offset-s6 s3">A D
							D</div>


					</form>
				</div>

			</div>

		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>-->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	  <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
	<script src="/node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
		<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script src="/adminPage/adminPage.js"></script>
	<script type="text/javascript">
		$("tr[id^=getUser]").on("click",function() {
			location.href = "/user/getUser/"+ $(this).attr("id").replace("getUser_", "")
		});
		
		
		$("#add_interest_btn").on("click",function(){

		var form = new FormData($("#add_interest_form")[0]);
		
		$.ajax({
			type : "post",
			url : "/user/addInterest",
			processData: false,
			contentType: false,
			data : form,
			success : function(data) {
		
					if(data.interestNo==0){
						swal({
							title :"이미 해당 카데코리가 존재 합니다. ",
							confirmButtonColor : "#ED2553"
						});	
					}else{
						
						
						swal({
								title : data.content+ "카테고리가 추가되었습니다. ",
								confirmButtonColor : "#ED2553",
								//imageUrl: "/image/interest/"+data.interestPhoto
							},function(){
								 location.href="/user/getAdminPageView";
							});
						 
				
						
					}
					
				
			
					

			}
		});
		});
		
		
		
	</script>
</body>

</html>