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

		<title>个人中心</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="stylesheet" type="text/css" href="css/personCenter.css">
		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="js/personCenter.js"></script>

	</head>
	<body> 
 
		<!-- 顶栏部分 -->
		<div class="head">
			<div class="comWidth">
				<!-- 上顶栏 -->
<!--&nbsp;&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;注册  -->
				<div class="headline">
					<b>收藏乐购</b>
					<span>  <a href="personCenter.jsp">  <%=session.getAttribute("username")%></a>
              <a href="<%=path%>/users/Users_logout.action">注销</a>    欢迎来到乐购网</span>
				</div>
				<!-- 中顶栏 -->
				<div class="headmiddle">
			
				</div>

			</div>
		</div>




		<!-- 中部 -->
		<div class="midle">
			<div class="comWidth">
				<!-- 导航栏 -->
				<div class="guideline">
					<span title="1">个人中心</span>
					<span title="2">订单详情</span>
					<span title="3">购物车</span>
				</div>
				<!-- 内容 -->
				<div class="guidecontent">
					<div class="personcenter">
					  
					  <!-- 个人中心信息显示区域 --> 
					  
					  
					  <%
							UsersDAO udao = new UsersDAOImpl();
							String username = (String) session.getAttribute("username");
							Users user = udao.userDetail(username);
						%>
					   
					   <form action="<%=path%>/users/Users_changeAddress.action" method="post">
					   
					
					 <span>现在地址:</span>   <input type="text" name="address"/>
					 <button>提交</button>
					   </form>
					  
		
					  
					  
				
					

					</div>
					<div class="tradedetail">

						<%
							Integer uid = (Integer) session.getAttribute("userid");
							TradeDAO tdao = new TradeDAOImpl();
							AddressDAO adao=new AddressDAOImpl();
							InvoiceDAO idao=new InvoiceDAOImpl();
							GoodsDAO  gdao=new GoodsDAOImpl();
							TradeGoodsDAO tgdao=new TradeGoodsDAOImpl();
							List<Trade> list = tdao.reTradeList(uid);
							for (Trade trade : list) {
						%>
						<p><span>支付方式:</span>
							<%
								if (trade.getPayway() == 2) {
							%>
							微信支付
							<%
								} else {
							%>
							货到付款
							<%
								}
							%>
						</p>
						
						
						<p>
							<span>地址信息:</span>
							<%
							Address	address=adao.reAddressByAid(trade.getAid());
							%>
							<%=address.getAddress() %>
							<%=address.getConsignee() %>
							<%=address.getPhoneNumber() %>
							
							
							</p>
						<p>
							<span>发票信息:</span>
							<%
							
							Invoice invoice=idao.reInvioce(trade.getInvoiceid());
							 %>
							 <%=invoice.getIheader() %>
							<%=invoice.getIname() %>
							<%=invoice.getItype() %>
							</p>
						<P>
							<span>商品信息:</span>
							
							<!-- 提取该交易商品信息极其数量 -->
							<%
							
						     List<TradeGoods> GoodsList=tgdao.reGoodsByTrade(trade.getTid());
							for(TradeGoods tradeGoods:GoodsList){
							
						     Goods good=	gdao.thisGood(tradeGoods.getGid());
						    %>
						         <span>商品名: <%=good.getGname() %></span>
						         <span>交易数量:<%=tradeGoods.getGnumber() %></span>
						         <br/>
						    <%
							
							}
							
							
							 %>
							
							
							</P>
						<%
							}
						%>

					</div>
					<div class="shopcardetail">
                      <%
                      ShopCarDAO sdao=new ShopCarDAOImpl();
                      List<Goods> goodsList=  sdao.reGoods(uid);
                      for(Goods good:goodsList){
                      
                    
                   
                      
         
                      %>
                      <span>商品名:<%=good.getGname() %></span>
                      <span>数量:<%=sdao.checkNumber(uid,good.getGid()) %></span>
                      <br/>
                      <%
                      }
                      
                      
                       %>

					</div>
				</div>
			</div>
		</div>
		<!-- 底栏 -->
		<div class="">




		</div>


















	</body>
</html>
