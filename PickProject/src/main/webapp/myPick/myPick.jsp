<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">
<title>Material Sortable Datatable</title>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="/node_modules/jquery-colorbox/colorbox.css">
<link rel="stylesheet" href="/myPick/myPick.css">
</head>

<body>
	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;My Pick</a>
			</div>
		</nav>
	</div>
	<div class="row">
		<div class="col s12">
			<div class="card material-table">
				<div class="table-header">
					<div class="actions">
						<a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"></a>
						<a href="#" class="search-toggle waves-effect btn-flat nopadding">
							<i class="material-icons">search</i>
						</a>
					</div>
				</div>
				<table class="datatable">
					<thead>
						<tr>
							<th data-field="UserEmail">UserEmail</th>
							<th data-field="Category">Category</th>
							<th data-field="Title">Title</th>
							<th data-field="VoteType">VoteType</th>
							<th data-field="EndDate">End Date</th>
							<th data-field="PicnNum">Pick Count</th>
							<th data-field="Result">Result</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vote" items="${voteList}">
							<tr>
							<td>${userEmailMapByUserNoMap.get(vote.userNo)}</td>
							<td>${vote.voteCategory}</td>
							<td>${vote.voteTitle}</td>
							<td>${vote.voteType}</td>
							<td>${vote.endDate}</td>
							<td>${totalCountByVoteNoMap.get(vote.voteNo)}</td>
							<td>
								<div id="get_result_${vote.voteNo}" class="btn waves-effect waves-light btn-small custom-btn" type="submit" name="action" >result</div>
							</td>
						</tr>
						</c:forEach>
						
					
						
					</tbody>
					
			
				</table>
			</div>
		</div>
	</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>

	<script src="/node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
	<script src="/myPick/myPick.js"></script>
	<script type="text/javascript">
		
	$("div[id^=get_result]").on("click",function(){
			
		var voteNo = $(this).attr("id").replace("get_result_","");
		location.href="/vote/getResult/"+voteNo;
		
	});
	</script>
</body>

</html>