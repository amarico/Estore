$(document).ready(function() {
	//踩系统管理
	
	$(".yadd").click(function() {
        //获取被点击赞的在表中的id
		var title = $(this).attr("title");
		var vid = Number(title);
		alert(vid);
		
		
		//把该情况传入服务器
		var link="./valuation/Valuation_addNNumber.action?vid=";
		link=link+vid;		
		$.ajax( {
			cache : false,
			type : "POST",
			url : link, // 一个添加到购物车的
			dateType : "xml",
			async : false,
			error : function(request) {
				alert("error");
			},
			success : function(data) {
				// 改变当前界面点赞的数值
        

		}
		});
		

	});
	
	
	
	

	// 赞系统的管理

		$(".nadd").click(function() {
            //获取被点击赞的在表中的id
			var title = $(this).attr("title");
			var vid = Number(title);
			alert(vid);
			
			
			//把该情况传入服务器
			var link="./valuation/Valuation_addYNumber.action?vid=";
			link=link+vid;		
			$.ajax( {
				cache : false,
				type : "POST",
				url : link, // 一个添加到购物车的
				dateType : "xml",
				async : false,
				error : function(request) {
					alert("error");
				},
				success : function(data) {
					// 改变当前界面点赞的数值
            

			}
			});
			

		});

		// 加入购物车数量的处理

		$("#btn1").click(function() {

			var ghref = $("#btn2").attr("href");

			$.ajax( {
				cache : false,
				type : "POST",
				url : ghref, 
				dateType : "xml",
				async : false,
				error : function(request) {
					alert("发生错误");
				},
				success : function(data) {
					// 改变购物车数量

				var gnumber = $('#gnumber').html();
				var num = Number(gnumber) + 1;
				$('#gnumber').html(num);

			}
			});

		});

	});
