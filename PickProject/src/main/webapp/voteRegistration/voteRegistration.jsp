<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>


<head>
<title>PICK REGISTRATION</title>
<meta charset="utf-8">




<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="/voteRegistration/voteRegistration.css">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
</head>


<body>

	<div class="navbar-fixed">
		<nav class="custom-nav">
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;Vote Registration</a>
			</div>
		</nav>
	</div>


	<div class="container">
		<div class="row">
			<form id="vote_reg_form" enctype="multipart/form-data">

				<div class="input-field col s12">
					<input name="voteTitle" id="voteTitle" type="text" class="validate">
					<label for="voteTitle">SUBJECT</label>
				</div>
				<div class="input-field col s12">
					<textarea name="voteContent" id="voteContent" class="materialize-textarea"></textarea>
					<label for="voteContent">CONTENT</label>
				</div>
				<div class="input-field col s12">
					<input name="endDate" id="endDate" type="date" class="datepicker">
					<label for="endDate">END DATE</label>
				</div>

				<div class="input-field col s12">
					<select name="voteCategory" id="voteCategory">
						<c:forEach var="interest" items="${interestList}">
							<option value="${interest.content}" data-icon="/image/interest/thumbnail/${interest.interestPhoto}" class="circle">${interest.content}</option>
						</c:forEach>
					</select>
					<label>Category</label>
				</div>



				<div class="col offset-s3" style="font-size: 20px;">Select the type of PICK!</div>


				<div class="col s12">
					<div class="row">
						<div class="col s6">
							<input type="button" class="btn js-select-button btn--active btn-link no-js right" value="MULTI-CHOICE" />
						</div>
						<div class="col s6">
							<input type="button" class="btn js-select-button btn-link" value="VERSUS" />
						</div>
					</div>
					<div class="custom-voteType" style="display: none;">
						<select name="voteType" id="voteType-select">
							<option value="">-</option>
							<option value="MULTI-CHOICE" selected="selected">MULTI-CHOICE</option>
							<option value="VERSUS">VERSUS</option>
						</select>
					</div>

				</div>

				<div class="col s12">
					<div id="multiChoice" class='js-select js-MULTI-CHOICE'>
						MULTI-CHOICE<br>
						<div class="col s12">
							Limit of Selection :
							<div class="input-field inline">
								<input id="voteMax" name="voteMax" type="text" class="validate" value="1">
								<label for="voteMax">input max vote</label>
							</div>
							<a id="addExample" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
						</div>
						<div class="row">
							<div class="col s6">

								<input type="text" name="content1" placeholder="ENTER CONTENT">
							</div>
							<div class="col s4" id="filebox">
								<label for="image1">ADD IMAGE</label>
								<input type="file" name="photo1" id="image1" style="display: none;" />
								<div id="image_preview1" style="display: none">
									<img src="#" class="circle" width="50px" height="50px">
								</div>

							</div>
						</div>
						<div class="row">
							<div class="col s6">

								<input type="text" name="content2" placeholder="ENTER CONTENT">
							</div>
							<div class="col s4" id="filebox">
								<label for="image2">ADD IMAGE</label>
								<input type="file" name="photo2" id="image2" style="display: none;" />
								<div id="image_preview2" style="display: none">
									<img src="#" class="circle" width="50px" height="50px">
								</div>

							</div>
						</div>



					</div>
				</div>
				<div class="col s12">
					<!-- vs시작 -->
					<div id="singleChoice" class='price-large js-select js-VERSUS  js-hide'>
						VERSUS<br> <br> <br>
						<div class="row">
							<div class="col s5">
								<div class="row" id="filebox">
									<div id="image_preview100" style="padding-left: 10px; display: none;">
										<img src="#" class="circle" width="80px" height="80px">
									</div>
									<div style="padding-left: 50px;">
										<label id="label1" for="image100" style="text-align: center">ADD IMAGE</label>
										<input type="file" name="left_photo" id="image100" />
									</div>
								</div>
								<br>
								<div class="row" style="padding-left: 30px; padding-top: 25px;">
									<label for="vote">EXAMPLE1 </label>
									<div>
										<input type="text" name="left_content" placeholder="CONTENT">
									</div>
								</div>

							</div>
							<div class="col s2">VS</div>
							<div class="col s5">
								<div class="row" id="filebox">
									<div id="image_preview101" style="padding-left: 10px; display: none;">
										<img src="#" class="circle" width="80px" height="80px">
									</div>
									<div style="padding-left: 50px;">
										<label id="label1" for="image101" style="text-align: center">ADD IMAGE</label>
										<input type="file" name="right_photo" id="image101" />
									</div>
								</div>
								<br>
								<div class="row" style="padding-left: 30px; padding-top: 25px;">
									<label for="vote">EXAMPLE1 </label>
									<div>
										<input type="text" name="right_content" placeholder="CONTENT">
									</div>
								</div>

							</div>

						</div>



					</div>
				</div>

				<div class="col s12">
					<input type="button" id="showHide" aria-activedescendant="" class="btn" style="left: 300px;">
					<span id="optional1"> Detail setting </span>&nbsp; <span id="optional2"> (Optional)</span>&nbsp; <a><span class="glyphicon glyphicon-menu-down" id="showHide" aria-hidden="true"></span> </a>
				</div>


				<div class="row" style="display: none;" id="optionalSelect">
					<div class="col offset-s2 s4">
						GENDER<br> <br>
						<input name="gender" type="checkbox" id="male" />
						<label for="male">Male</label>
						<br>
						<input name="gender" type="checkbox" id="female" />
						<label for="female">Female</label>
						<br>
					</div>
					<div class="col s6">
						AGE<br> <br>
						<input name="age" type="checkbox" id="one" value="" />
						<label for="one">10s</label>
						<br>
						<input name="age" type="checkbox" id="two" />
						<label for="two">20s</label>
						<br>
						<input name="age" type="checkbox" id="three" />
						<label for="three">30s</label>
						<br>
						<input name="age" type="checkbox" id="four" />
						<label for="four">40s</label>
						<br>
						<input name="age" type="checkbox" id="five" />
						<label for="five">50s</label>
						<br>
						<input name="age" type="checkbox" id="six" />
						<label for="six">More than 60</label>
						<br>
					</div>
					<div id='hidden_authority'>
						<input type="hidden" name="one" value="false" />
						<input type="hidden" name="two" value="false" />
						<input type="hidden" name="three" value="false" />
						<input type="hidden" name="four" value="false" />
						<input type="hidden" name="five" value="false" />
						<input type="hidden" name="six" value="false" />
						<input type="hidden" name="male" value="false" />
						<input type="hidden" name="female" value="false" />
					</div>
				</div>




			</form>
			<div class="col offset-s6 s6" style="margin-left: 290px;">
				<input type="button" value="REGISTER" id="register_btn" class="btn btn-link left" style="font-size: 23px;" />

			</div>

		</div>
	</div>



	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/voteRegistration/voteRegistration.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script type="text/javascript">

    $("#register_btn").click(function () {
    	
    	if($("input[name='voteTitle']").val()==''){
    		swal("투표 제목을 입력하세요.");
    		return;
    	}
     	if($("textarea[name='voteContent']").val()==''){
    		swal("투표 내용을 입력하세요.");
    		return;
    	}
    	
    	if($("input[name='endDate']").val()==''){
    		swal("투표 종료일을 선택 해주세요. ");
    		return;
    	}
  
    	
    	// MultiChoice 일경우 선택지 갯수 전송하기 위함	
    	if($("#voteType-select").val()=='MULTI-CHOICE'){
    		var choiceCount = $("input[name^=content]").length;
    		$("#multiChoice").append("<input type='hidden' name='choiceCount' value='"+choiceCount+"'/>");
    	}
    	
		
		
		/* 아무것도 선택하지 않았을 경우 권한 선택하지 않은것으로 간주함 */
    	var count =  $("input[name='age']:checkbox:checked").length+$("input[name='gender']:checkbox:checked").length;
    	if(count==0){
			$("#hidden_authority > input").val("true");
		}else{
			$("input:checkbox:checked").each(function(){
				$("div>input[name='"+$(this).attr("id")+"']").val("true");
			});
		}
	    $("#vote_reg_form").attr("method" , "POST").attr("action" , "/vote/addVote").submit();
	    
    });
		
	</script>
</body>
</html>