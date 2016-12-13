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
					</select> <label>Category</label>
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
					<div class="custom-voteType"  style="display: none;">
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
							<a id="addExample" class="btn-floating btn-large waves-effect waves-light red">
								<i class="material-icons">add</i>
							</a>
						</div>
						<div class="row">
							<div class="col s6">

								<input type="text" class="input_content" name="content1" placeholder="ENTER CONTENT">
							</div>
							<div class="col s4" id="filebox">
								<label for="image1">ADD IMAGE</label>
								<input type="file" class="input_img" name="photo1" id="image1"  accept="image/*" />
								<div id="image_preview1" style="display: none">
									<img src="#" class="circle" width="50px" height="50px">
								</div>

							</div>
						</div>
						<div class="row">
							<div class="col s6">

								<input type="text"  class="input_content" name="content2" placeholder="ENTER CONTENT">
							</div>
							<div class="col s4" id="filebox">
								<label for="image2">ADD IMAGE</label>
								<input type="file" class="input_img" name="photo2" id="image2"  accept="image/*" />
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
										<label for="image100" style="text-align: center">ADD IMAGE</label>
										<input type="file" class="input_img" accept="image/*"  name="left_photo" id="image100" />
									</div>
								</div>
								<br>
								<div class="row" style="padding-left: 30px; padding-top: 25px;">
									<label for="vote">EXAMPLE1 </label>
									<div>
										<input type="text"  class="input_content" name="left_content" placeholder="CONTENT">
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
										<label  for="image101" style="text-align: center">ADD IMAGE</label>
										<input type="file" class="input_img"  accept="image/*" name="right_photo" id="image101" />
									</div>
								</div>
								<br>
								<div class="row" style="padding-left: 30px; padding-top: 25px;">
									<label for="vote">EXAMPLE2 </label>
								<div>
										<input type="text"  class="input_content" name="right_content" placeholder="CONTENT">
									</div>
								</div>

							</div>

						</div>



					</div>
				</div>

				<div class="col s12">
					<input type="button" id="showHide" aria-activedescendant="" class="btn" style="left: 300px;">
					<span id="optional1"> Detail setting </span>&nbsp; <span id="optional2"> (Optional)</span>&nbsp;
					<a>
						<span class="glyphicon glyphicon-menu-down" id="showHide" aria-hidden="true"></span>
					</a>
				</div>


				<div class="row" style="display: none;" id="optionalSelect">
					<div class="col offset-s2 s4">
						GENDER<br> <br>
						<input name="gender" type="checkbox" id="male" />
						<label for="male">Male</label> <br>
						<input name="gender" type="checkbox" id="female" />
						<label for="female">Female</label> <br>
					</div>
					<div class="col s6">
						AGE<br> <br>
						<input name="age" type="checkbox" id="one" value="" />
						<label for="one">10s</label> <br>
						<input name="age" type="checkbox" id="two" />
						<label for="two">20s</label> <br>
						<input name="age" type="checkbox" id="three" />
						<label for="three">30s</label> <br>
						<input name="age" type="checkbox" id="four" />
						<label for="four">40s</label> <br>
						<input name="age" type="checkbox" id="five" />
						<label for="five">50s</label> <br>
						<input name="age" type="checkbox" id="six" />
						<label for="six">More than 60</label> <br>
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
    		swal({
    			title:"투표 제목을 입력하세요. ",
    			confirmButtonColor : "#ED2553"
    		});
    		return;
    	}
     	if($("textarea[name='voteContent']").val()==''){
    		swal({
    			title:"투표 내용을 입력하세요. ",
    			confirmButtonColor : "#ED2553"
    		});
    		return;
    	}
    	
    	if($("input[name='endDate']").val()==''){
    		swal({
    			title:"투표 종료일을 선택하세요.",
    			confirmButtonColor : "#ED2553"
    		});
    		return;
    	}
    	/*=============================  */
     	var hasContent = true;
    		 $(".input_content").each(function(){
 		 	if($(this).attr("disabled") != 'disabled'){
     			if($(this).val()==''){
     			
     				swal({
         				title:"선택지 내용을 추가해주세요.",
         				confirmButtonColor : "#ED2553"
      				}); 
     				hasContent=false;
     				
     				return false;
     				
     		}
    		 }
 		}); 
    		 
    		 if(hasContent==false){
    			 return;
    		 }
    	/*=============================  */
    	/*=============================  */
    	var hasFile = true;
   		 $(".input_img").each(function(){
		 	if($(this).attr("disabled") != 'disabled'){
    			if($(this).val()==''){
    			
    				swal({
        				title:"사진을 추가해주세요.",
        				confirmButtonColor : "#ED2553"
     				}); 
    				hasFile=false;
    				
    				return false;
    				
    		}
   		 }
		}); 
   		 
   		 if(hasFile==false){
   			 return;
   		 }
   		/*=============================  */
   	
   		
   		
    
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
    
    	var form = new FormData($("#vote_reg_form")[0]);

		swal({
			title : "투표를 등록 하시겠습니까?",
			type : "info",
			confirmButtonColor : "#ED2553",
			showCancelButton : true,
			closeOnConfirm : false,
			showLoaderOnConfirm : true,

		}, function(isConfirm) {
			if (isConfirm) {
				$.ajax({
					type : "post",
					url : "/vote/addVote",
					processData : false,/*data 파라미터로 전달된 데이터를 jQuery 내부적으로 query string 으로 만드는데, 파일 전송의 경우 이를 하지 않아야 하고 이를 설정하는 것이 processData: false 이다.*/
					contentType : false,/*contentType 은 default 값이 "application/x-www-form-urlencoded; charset=UTF-8" 인데, "multipart/form-data" 로 전송이 되게 false 로 넣어준다. */
					data : form,
					success : function(data) {
						setTimeout(function() {
							swal({
								title : data.voteTitle + " 투표가 등록되었습니다.",
								confirmButtonColor : "#ED2553",
								showLoaderOnConfirm : true
							},function(isConfirm){
								/* color 박스 닫기   */
								parent.$.colorbox.close();
								
							});
						}, 2500);
					}
				});
			}

		});
    
    });
		
	</script>
</body>
</html>