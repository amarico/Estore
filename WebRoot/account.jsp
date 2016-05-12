<%@ page language="java"
	import="java.util.*,entity.*,service.*,service_impl.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="stylesheet" type="text/css" href="css/account.css">

		<!-- 放入jQuery文件 -->
		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="js/account.js"></script>

	</head>
	<body>
		<div class="head">
			<div class="comWidth">
				<span class="fl">收藏乐购</span>
				<p class="fr">
				
				 <!-- 用户登录显示 -->
                       <%
                       if(session.getAttribute("username")!=null){
                       
                       %>
              <a href="personCenter.jsp">  <%=session.getAttribute("username")%></a>
              <a href="<%=path%>/users/Users_logout.action">注销</a>      
                       
                   
                       欢迎来到乐购网!&nbsp;&nbsp;
                      
                       
                       <%              
                       }
                       else{
                       
                       
                       %>
                       欢迎来到乐购网!&nbsp;&nbsp;
						<a href="<%=path%>/register.jsp">登陆</a>&nbsp;
						<a href="<%=path%>/login.jsp">注册</a>
                       
                       <%
                       }
 
                        %>
                       
				
				
				
				
				<!-- 欢迎来到乐购网！[登录]&nbsp;[免费注册] -->	
					
					
					
				</p>
			</div>
		</div>

		<div class="headamong">
			<div class="comWidth">
				<div class="fl logoPos">

				</div>
			</div>
		</div>
		<!-- fangzhibiaodan -->

		<div class="comWidth">



			<div class="trade tradeheight">
				<h3>
					收货信息
				</h3>
				<!-- 这里放置用户的地址信息 -->

				<%
					AddressDAO adao = new AddressDAOImpl();
					List<Address> list = adao.reAddress(1);
					for (Address address : list) {
				%>
				<div>
					<input type="radio" name="address" value="<%=address.getAid()%>" />
					<%=address.getAddress()%>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<%=address.getPhoneNumber()%>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<%=address.getConsignee()%>
				</div>

				<%
					}
				%>


				<div id="readdress"></div>

				<form id="ajaxFrm">
					<div class="address">
						<p>
							选择地区：
							<input type="text">
						</p>
						<p>
							详细地址：
							<input type="text" name="address">
						</p>
						<p>
							收&nbsp;货&nbsp;人&nbsp;&nbsp;：
							<input type="text" name="consignee">
						</p>
						<p>
							手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：
							<input type="text" name="phoneNumber">
						</p>
						<button id="btn1" type="reset">
							添加收获地址
						</button>
					</div>
				</form>


			</div>


			<div class="trade payheight">
				<h3>
					支付方式
				</h3>
				<div class="address">
					<p>
						<input type="radio" name="payway" value="1" />
						微信支付
					</p>
					<p>
						<input type="radio" name="payway" value="2" />
						货到付款
					</p>
				</div>
			</div>

			<div class="trade invoiceheight">
				<h3>
					发票信息
				</h3>
				<div class="address">

					<form id="ajaxFrm2">
						<p>
							<input type="checkbox" name="invoice" checked="checked" id="checkb1">
							需要发票
						</p>
						<p>
							发票信息：
							<select name="invoicetype">
								<option value="1">
									商业零售发票
								</option>
								<option value="2">
									非零售发票
								</option>
							</select>

						</p>
						<p>
							发票抬头：
							<select name="invoicehead">
								<option value="1">
									个人
								</option>
								<option value="2">
									商家
								</option>
							</select>
							<input name="invoicename" />
						</p>
						<button type="button" id="btn2">
							保存
						</button>
					</form>

				</div>
			</div>

			<div class="trade invoiceheight">
				<h3>
					送货清单
				</h3>
				<table>

					<tr>
						<td>
							商品名
						</td>
						<td>
							单价
						</td>
						<td>
							数量
						</td>
						<td>
							小计
						</td>
					</tr>

					<%
						int sum = 0;
						ShopCarDAO sdao = new ShopCarDAOImpl();
						//先把用户id写死
						List<Goods> goodsList = sdao.reGoods(1);
						for (Goods good : goodsList) {
							//根据商品id和用户id查数量
							int k = sdao.checkNumber(1, good.getGid());
					%>
					<tr>
						<td><%=good.getGname()%></td>
						<td><%=good.getGprice()%></td>
						<td><%=k%></td>
						<td><%=k * good.getGprice()%></td>
					</tr>

					<%
						sum += k * good.getGprice();
						}
					%>

				</table>
			</div>

			<div class="trade invoiceheight">
				<h3>
					订单结算
				</h3>
				<div class="address">
					<div>
						总计<%=sum%>
					</div>
					<div>
						<!-- 这个放置的是订单结算页面 -->
						<a href="<%=path%>/account/Account_account.action" id="btn3"><button type="button">
								提交订单
							</button>
						</a>
					</div>
				</div>
			</div>


		</div>

		<div class="foot">
			<p>
				乐购简介|乐购公告| 招纳贤士| 联系我们|客服热线：400-110-120
			</p>
			<p>
				Copyright © 2006 - 2014 乐购版权所有 ICP备090000号 京ICP证B1034-0000号
				成都市公安局武侯分局备案编号：123456789
			</p>
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
		</div>
	</body>
</html>
