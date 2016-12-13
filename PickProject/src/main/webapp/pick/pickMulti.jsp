<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/pick/pickMulti.css">
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
				<c:forEach var="choice" items="${vote.choiceList}">
					<div class="col s4">
						<input type="checkbox" id="cb_${choice.choiceNo}" name="choiceNo" value="${choice.choiceNo}" />
						<label for="cb_${choice.choiceNo}"><img src="/image/vote/thumbnail/${choice.photo}" /></label>
					</div>
				</c:forEach>


			</form>
		</div>
		<div class="row">
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<div class="col offset-s6 s6">
				<span class="label"></span>
				<a class="iconBtn" href="#pick" id="pick-btn">PICK!</a>
			</div>
		</div>

	</div>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#pick-btn").click(
									function() {
										alert("서버로 보내기!");
										$("#updateChoiceCnt").attr("method",
												"POST").attr("action",
												"/vote/updateChoiceCnt")
												.submit();
									});

							$("input[name=choiceNo]:checkbox")
									.change(
											function() {// 체크박스들이 변경됬을때
												var cnt = $
												{
													vote.voteMax
												}
												if (cnt == $("input[name=choiceNo]:checkbox:checked").length) {
													$(":checkbox:not(:checked)")
															.attr("disabled",
																	"disabled");
												} else {
													$(
															"input[name=choiceNo]:checkbox")
															.removeAttr(
																	"disabled");
												}
											});
						});
	</script>


</body>

</html>