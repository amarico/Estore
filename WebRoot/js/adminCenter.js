$(document).ready(function() {
   //������Ч��
	$(".guideline").find("span").click(function() {

		var title = $(this).attr("title");
		$(".guidecontent").find("div").css("display", "none");
		if (title == "1") {
			$(".usercenter").css("display", "block");
		} else if (title == "2") {
			$(".goodsAdd").css("display", "block");
		} else {
			$(".goodsDelete").css("display", "block");
		}

	});
	//������Ϣ�޸�Ч��
	
	
	
	
	

});