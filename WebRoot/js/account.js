$(document)
		.ready(function() {

			// ����ύ�����ķ�Ӧ
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

				// ����Ʊ��Ϣ

				$("#btn2").click(function() {
					$.ajax( {
						cache : false,
						type : "POST",
						url : "./invoice/Invoice_addInovoice.action", // �ѱ����ݷ��͵�ajax.jsp
						data : $('#ajaxFrm2').serialize(), // Ҫ���͵���ajaxFrm���е�����
						dateType : "xml",
						async : false,
						error : function(request) {
							alert("��������");
						},
						success : function(data) {
                          
							var iid = $(data).find("iid").text();
							 $('#checkb1').attr("value",iid);

						}
					});

				});

				// ���ﴦ����ǵ�ַ��Ϣ
				$("#btn1")
						.click(
								function() {
									$
											.ajax( {
												cache : false,
												type : "POST",
												url : "./address/Address_addressAdd.action", // �ѱ����ݷ��͵�ajax.jsp
												data : $('#ajaxFrm')
														.serialize(), // Ҫ���͵���ajaxFrm���е�����
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
