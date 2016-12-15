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

			<div class="col s8">
				<div id='gender_dashboard'></div>
				<div id='age_dashboard'></div>
			</div>

		</div>
	</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="/result/resultOne.js"></script>

	<script type="text/javascript">
	var genderData=[
		{State:'Yes',freq:{male:23, female:32}}
		,{State:'No',freq:{male:53, female:22}}

	];

	var ageData=[
 		{State:'Yes',freq:{ s10:11, s20:12,s30:11,s40:11,s50:1,s60:22}}
		,{State:'No',freq:{s10:23, s20:11,s30:11,s40:1,s50:2,s60:27}}

];

dashboard('#gender_dashboard','#age_dashboard',genderData,ageData);

	
	</script>
</body>

</html>