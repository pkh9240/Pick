$(function() {

	$('.message a').click(function() {
		$('form').animate({
			height : "toggle",
			opacity : "toggle"
		}, "slow");
	});
	
	
	   $("#register_btn").on("click",function(){
		   $.colorbox({
			   iframe:"true",
			   href : "/user/getRegisterInterest",
			   data :  {a:"a",b:"b"},
			   width : "440px",
			   height : "700px"
		   });
	   });
	    

});