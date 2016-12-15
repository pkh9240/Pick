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
			<i id="info_btn" class="material-icons right tooltipped" data-position="top" data-delay="50" data-tooltip="상세 정보">info_outline</i> <i id="share_btn" class="material-icons right tooltipped" data-position="top" data-delay="50" data-tooltip="투표 공유 하기 ">share</i>
		</div>
		<div id="pick_btn" class="btn waves-effect waves-light col offset-s1 s4 left">
			P I C K <i class="material-icons right">done</i>
		</div>
		<div></div>

	</div>


	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

	<script type="text/javascript">
		/*선택 개수 제한 */
		$("input:checkbox[name='choiceNo']").on("change",function(){
			var checkedBoxCount = $("input:checkbox[name='choiceNo']:checked").length;
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
		
		
		$("#pick_btn").on("click",function(){
			
			$("#pick_form").attr("method","post").attr("action","/vote/voteMultiChoice").submit();	
			parent.location.href="/user/main";
				

		});
		
		

		
		
		
	</script>


</body>

</html>