$(document)
		.ready(function() {

			// 点击提交订单的反应
				$("#btn3").click(function() {
                var address=$("input:radio[name='address']:checked").attr("value");
				var payway=	$("input:radio[name='payway']:checked").attr("value");
				var invoice=$("input:checkbox[name='invoice']:checked").attr("value");
				var hr= $('#btn3').attr("href");
				var he="./account/Account_account.action";
				if(invoice==null){
					hr = hr + "?payway=" + payway+"&address="+address;	
					$('#btn3').attr("href",hr);
				}else{
					hr = hr + "?payway=" + payway+"&address="+address+"&invoice="+invoice;
					$('#btn3').attr("href",hr);
				}
				
				
				
				
				
				alert(hr);
				});

				// 处理发票信息

				$("#btn2").click(function() {
					$.ajax( {
						cache : false,
						type : "POST",
						url : "./invoice/Invoice_addInovoice.action", // 把表单数据发送到ajax.jsp
						data : $('#ajaxFrm2').serialize(), // 要发送的是ajaxFrm表单中的数据
						dateType : "xml",
						async : false,
						error : function(request) {
							alert("发生错误");
						},
						success : function(data) {
                          
							var iid = $(data).find("iid").text();
							 $('#checkb1').attr("value",iid);

						}
					});

				});

				// 这里处理的是地址信息
				$("#btn1")
						.click(
								function() {
									$
											.ajax( {
												cache : false,
												type : "POST",
												url : "./address/Address_addressAdd.action", // 把表单数据发送到ajax.jsp
												data : $('#ajaxFrm')
														.serialize(), // 要发送的是ajaxFrm表单中的数据
												dateType : "xml",
												async : false,
												error : function(request) {
													alert("sdf");
												},
												success : function(data) {

													var address = $(data).find(
															"address").text();
													var phone = $(data).find(
															"phone").text();
													var name = $(data).find(
															"name").text();
													var valu = $(data).find(
															"value").text();
													var nu = "&nbsp;&nbsp;&nbsp;&nbsp;";
													var txt = $("<input type='radio' name='address' id='inn'>");

													$('#readdress')
															.html(
																	address
																			+ nu
																			+ phone
																			+ nu
																			+ name);
													$('#readdress')
															.prepend(txt);
													$('#inn').attr("value",
															valu);

												}
											});

								});

			});
