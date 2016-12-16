<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700'>
<link rel="stylesheet" href="/result/resultOne.css">
<!-- Fuentes de Google -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<!-- Iconos -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
	
	

	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;투표 결과</a>
			</div>
		</nav>
	</div>



	<div id="container">
		<div class="row">

			<div class="col s7">
				<div class="row">
					<div class="col s12 center">

						<div class="card-panel">

							<div id="voteTitle">제목</div>
							<br />
							<div id="voteContent" id="voteContent">내용</div>
						</div>
					</div>
					<div class="col s12">
						<div id='dashboard'></div>
					</div>
				</div>

			</div>
			<div class="col s5">
				<div class="detailBox">
					<div class="titleBox">
						<label>너의 의견을 달아봐 </label>
					</div>
					<div class="actionBox">
						<ul class="commentList">
							<li>
								<div class="commenterImage">
									<img src="/image/profile/original/kwanghee.jpg" />
								</div>
								<div class="commentText">
									<p class="">Hello this is a test comment.</p>
									<span class="date sub-text">on March 5th, 2014</span>

								</div>
							</li>
							<li>
								<div class="commenterImage">
									<img src="/image/profile/original/kwanghee.jpg" />
								</div>
								<div class="commentText">
									<p class="">Hello this is a test comment and this comment is particularly very long and it goes on and on and on.</p>
									<span class="date sub-text">on March 5th, 2014</span>

								</div>
							</li>
							<li>
								<div class="commenterImage">
									<img src="/image/profile/original/kwanghee.jpg" />
								</div>
								<div class="commentText">
									<p class="">Hello this is a test comment.</p>
									<span class="date sub-text">on March 5th, 2014</span>

								</div>
							</li>
							<li>
								<div class="commenterImage">
									<img src="/image/profile/original/kwanghee.jpg" />
								</div>
								<div class="commentText">
									<p class="">Hello this is a test comment.</p>
									<span class="date sub-text">on March 5th, 2014</span>

								</div>
							</li>
							<li>
								<div class="commenterImage">
									<img src="/image/profile/original/kwanghee.jpg" />
								</div>
								<div class="commentText">
									<p class="">Hello this is a test comment.</p>
									<span class="date sub-text">on March 5th, 2014</span>

								</div>
							</li>
						</ul>

						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">account_circle</i>
								<input id="icon_prefix" type="text" class="validate">
								<label for="icon_prefix">댓글</label>
							</div>

							<div class="col s4">
								<div  id="add_btn" class="btn btn-default">Add</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="/result/resultOne.js"></script>

	<script type="text/javascript">

		 var genderData = [ { State : '${contentByChoiceNoMap.get(mapList.get(0).get("choiceNo"))}',freq : { male : ${mapList.get(0).get("male")}, female : ${mapList.get(0).get("female")}}}, 
						    { State : '${contentByChoiceNoMap.get(mapList.get(1).get("choiceNo"))}',freq : { male : ${mapList.get(1).get("male")}, female : ${mapList.get(1).get("female")}}}
		
						 ];

		var ageData = [{ State : '${contentByChoiceNoMap.get(mapList.get(0).get("choiceNo"))}',
					     freq : { s10 : ${mapList.get(0).get("s10")},
								  s20 : ${mapList.get(0).get("s20")},
			   					  s30 : ${mapList.get(0).get("s30")},
								  s40 : ${mapList.get(0).get("s40")},
							      s50 : ${mapList.get(0).get("s50")},
								  s60 : ${mapList.get(0).get("s60")}
						}}
						, { State : '${contentByChoiceNoMap.get(mapList.get(1).get("choiceNo"))}',
							freq :{ s10 : ${mapList.get(1).get("s10")},
									s20 : ${mapList.get(1).get("s20")},
									s30 : ${mapList.get(1).get("s30")},
									s40 : ${mapList.get(1).get("s40")},
									s50 : ${mapList.get(1).get("s50")},
									s60 : ${mapList.get(1).get("s60")}
								 }}];

		dashboard('#dashboard', genderData, ageData);
	</script>
</body>

</html>