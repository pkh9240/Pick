<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/pick/pickOne.css">

<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
</head>

<body>
	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;Pick</a>
			</div>
		</nav>
	</div>
	<div id="container">
		<div class="section">
			<h5>Category >${vote.voteCategory}</h5>
			<div id="detail">
				AGE : 10s, 20s, 30s<br /> GENDER : male
			</div>
		</div>
		<div class="row">
			<div id="voteTitle" class="col offset-s4 s4">${vote.voteTitle}</div>
			<br />
			<div id="voteContent" class="col offset-s4 s4" id="voteContent">
				<span class="flow-text">${vote.voteContent}</span>
			</div>

		</div>
		<div class="row">
			<form id="updateChoiceCnt" method="POST">

				<div class="col s5">
					<input type="radio" id="cb1" name="choiceNo" value="${vote.choiceList.get(0).choiceNo}" />
					<label for="cb1"><img src="/image/vote/thumbnail/${vote.choiceList.get(0).photo}" /></label>
				</div>


				<div id="center_vs"class="col s2">VS</div>
				<div class="col s5">
					<input type="radio" id="cb2" name="choiceNo" value="${vote.choiceList.get(1).choiceNo}" />
					<label for="cb2"><img src="/image/vote/thumbnail/${vote.choiceList.get(1).photo}" /></label>
				</div>

			</form>
		</div>
		<div class="row">
			<br/><br/><br/><br/><br/><br/><br/><br/>
			<div class="col offset-s6 s6"> <span class="label"></span> <a class="iconBtn" href="#pick" id="pick-btn">PICK!</a></div>
		</div>

	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="neat-tooltip.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$("#pick-btn")
							.click(
									function() {
										$("#updateChoiceCnt").attr("method",
												"POST").attr("action",
												"/vote/updateChoiceCnt")
												.submit();
									});
				});
	</script>
</body>

</html>