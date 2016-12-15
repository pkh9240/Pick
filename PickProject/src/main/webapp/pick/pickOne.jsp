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
</head>

<body>

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
	<script type="text/javascript">
			$("#pick_btn").on("click",function(){
			
					$("#pick_form").attr("method","post").attr("action","/vote/voteVersus").submit();
					parent.location.href="/user/main";
						
		
			});
		
		
		     $('.tooltipped').tooltip({delay: 50});
	
		
	</script>
</body>

</html>