var n = "";
$(document).ready(function () {
	selectOptions();
    $('select').material_select();
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15, // Creates a dropdown of 15 years to control year
        format: 'dd/mm/yyyy'
    });
});

// 이미지 업로드 미리보기
$(document).on('change', "input[id^=image]", function () {
    
    var id = $(this).attr("id");
    var m = $(this).attr("id").replace("image", "");
    ext = $(this).val().split('.').pop().toLowerCase(); // 확장자
    // 배열에 추출한 확장자가 존재하는지 체크
    if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
        resetFormElement($(this)); // 폼 초기화
        window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
    }
    else {
        file = $(this).prop("files")[0];
        /* file = $(this).attr("id").prop("files")[0]; */
        blobURL = window.URL.createObjectURL(file);
        $('#image_preview' + m + ' img').attr('src', blobURL);
        $('#image_preview' + m).slideDown(); // 업로드한 이미지 미리보기
        var img = $('#image_preview' + m).slideDown();
        $(this).slideUp(); // 파일 양식 감춤
        $(this).parent().prepend(img);
        /* $("#label1").remove(); */
        $(this).parent().children("label").text("MODIFY");
    }
});


$(document).on('click', "div[id^=image_preview] a", function () {
    var imgId = $(this).parent().attr("id");
    $(this).parent().attr("id").replace("image_preview", "");
    resetFormElement($('#image' + m)); // 전달한 양식 초기화
    $('#image' + m).slideDown(); // 파일 양식 보여줌
    $(this).parent().slideUp(); // 미리 보기 영역 감춤
    /* $(this).closest("label").remove(); */
    return false; // 기본 이벤트 막음
});

function resetFormElement(e) {
    e.wrap('<form>').closest('form').get(0).reset();
    // 리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) ,
    // 요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
    // DOM에서 제공하는 초기화 메서드 reset()을 호출
    e.unwrap(); // 감싼 <form> 태그를 제거
}
// 동적으로 투표등록input칸 추가하기..

// 선택지 추가하기
/* $("#addExample").click(function () { */
$(document).on("click","#addExample",function(){
 
    var choiceCount=$("input[name^=content]").length;

    var row="<div class='row'>";
    row+="<div class='col s6'>";
    row+="<input type='text' name='content" +(choiceCount+ 1) + "' placeholder='ENTER CONTENT'>";
    row+="</div>";
    row+="<div class='col s4' id='filebox'>";
    row+="<label for='image"+(choiceCount+ 1) +"'>ADD IMAGE</label>";
    row+="<input type='file' name='photo" + (choiceCount+ 1)  + "' id='image" + (choiceCount+ 1)  + "'style='display: none;' />";
    row+="<div id='image_preview" +(choiceCount+ 1)  + "' style='display:none'>"
    row+="<img src='#' class='circle' width='50px' height='50px'>";
    row+="</div>";
    row+="</div>";
    row+="<div class='col s2'><a id='remove_btn' class='btn-floating btn-large waves-effect waves-light red'><i class='material-icons'>remove</i></a></div>";
    row+="</div>";
    $("#multiChoice").append(row);
   
});

// 투표등록칸 삭제하기
$(document).on("click", "#remove_btn", function () {
    $(this).parent().parent().remove();
});

// 상세설정 보이기/숨기기
$("#showHide").click(function () {
    if ($("#optionalSelect").css("display") == "none") {
        jQuery('#optionalSelect').show();
    }
    else {
        jQuery('#optionalSelect').hide();
    }
});

// 버튼클릭에 따른 투표선택 디스플레이 및 선택되지 않은 투표타입의 input태그 비활성화 (해당 투표타입의 데이터값만 Controller로
// 넘어가야 하므로 반드시 해주자..)
function selectOptions() {
	$(".js-hide").find("input").attr("disabled","disabled");
	    
    $('.js-select-button').click(function () {
/*
 * $('.js-select-button').removeClass('btn--active');
 * $(this).addClass('btn--active');
 */
        $('.js-select-button').toggleClass('btn--active');  /*
															 * 위의 removeClass ,
															 * addClass 는
															 * toggleClass 하나로
															 * 간단히 해결가능..
															 */
        $('.js-select').hide();
        $('.js-' + $(this).val()).show();
        $('.js-select').find("input").attr("disabled","disabled"); // 투표타입이 바뀌면
																	// input태그들을
																	// 전부 비활성화
																	// 시켰다가..
        $('.js-' + $(this).val()).find("input").removeAttr("disabled"); // 선택된
																		// 투표타입의
																		// input태그만
																		// 활성화
																		// 시킨다..
        
        $("#voteType-select").val($(this).val());
        console.log($(this).val());
             
 /*
	 * 이거 하나로 해결할 코드를 아래처럼 짰다니.. --> $("#voteType-select").val($(this).val());
	 * 아래는 뻘코드.. 기억해뒀다가 다음부턴 저런짓하지말자 if($(this).val()=="MULTI-CHOICE"){
	 * alert($(this).val()); $('#voteType-select
	 * option[value=VERSUS]').removeAttr('selected'); $('#voteType-select
	 * option[value=MULTI-CHOICE]').attr('selected', 'selected'); }else
	 * if($(this).val()=="VERSUS") { alert($(this).val()); $('#voteType-select
	 * option[value=MULTI-CHOICE]').removeAttr('selected'); $('#voteType-select
	 * option[value=VERSUS]').attr('selected', 'selected'); }
	 */
    });
   
}



