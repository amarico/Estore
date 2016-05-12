$(document).ready(function() {
   //导航栏效果
	$(".guideline").find("span").click(function() {

		var title = $(this).attr("title");
		$(".guidecontent").find("div").css("display", "none");
		if (title == "1") {
			$(".personcenter").css("display", "block");
		} else if (title == "2") {
			$(".tradedetail").css("display", "block");
		} else {
			$(".shopcardetail").css("display", "block");
		}

	});
	//个人信息修改效果
	
	
	
	
	

});