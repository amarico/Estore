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
		<link rel="stylesheet" type="text/css" href="css/introduce.css">


		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="js/introduce.js"></script>
	</head>
	<body>



		<div class="head">
			<div class="comWidth">
				<span class="fl">收藏乐购</span>




				<p class="fr">
					<%
						if (session.getAttribute("username") != null) {
					%>
					<%=session.getAttribute("username")%>
					欢迎来到乐购网!&nbsp;&nbsp;
					<%
						} else {
					%>
					欢迎来到乐购网!&nbsp;&nbsp;
					<a href="<%=path%>/register.jsp">登陆</a>&nbsp;
					<a href="<%=path%>/login.jsp">注册</a>

					<%
						}
					%>
				</p>



			</div>
		</div>
		<div class="headamong">
			<div class="comWidth">
				<div class="fl logoPos"></div>
				<div class="fl searchText">
					<form>
						<input type="text" class="searchMessage fl">
						<input type="button" value="搜 索" class="searchButton fl">
					</form>
				</div>
				<a href="<%=path%>/account.jsp">
				<div class="fr shopcar">
					<span class="fl">购物车</span>
					<li class="fr" id="gnumber">


						<%
							if (session.getAttribute("userid") != null) {

								ShopCarDAO sdao = new ShopCarDAOImpl();
								int k = sdao.reNumber(Integer.parseInt(session.getAttribute(
										"userid").toString()));
						%>

						<%=k%>
						<%
							} else {
						%>
						0
						<%
							}
						%>


					</li>
				</div>
				</a>
			</div>
			
		</div>


		<div class="guideLine">
			<div class="comWidth">
				<h3>
					全部商品分类
				</h3>
				<ul>
					<li class="active">
						数码城
					</li>
					<li>
						天黑黑
					</li>
					<li>
						团购
					</li>
					<li>
						发现
					</li>
					<li>
						二手特卖
					</li>
					<li>
						名品会
					</li>
				</ul>
			</div>
		</div>

		<div class="comWidth">
			<p class="Messageguide">


				<%
					//获取该商品的id,这里先写死
					GoodsDAO gdao = new GoodsDAOImpl();
					int k = Integer.parseInt(request.getParameter("goodsid"));
					Goods good = gdao.thisGood(k);

					//这个接口封装的太复杂了，应当进一步封装
					ClassifyDAO cdao = new ClassifyDAOImpl();
					List<String> list = cdao.reList(k);

					for (int i = list.size() - 1; i >= 0; i--) {
				%>
				<%=list.get(i)%>>
				<%
					}
				%>

			</p>
		</div>
		<div class="goodpic comWidth">
			<div class="leftArea fl">
				<div class="bigpic">
					<img alt="" src="image/apple.jpg">
				</div>
				
			</div>
			<div class="rightArea fr">

				<h3><%=good.getGname()%></h3>
				<p>
					本店价:
					<%=good.getGprice()%>元
				</p>

				<div class="goodeDetail">
					<div class="buyColor">
						<div class="buyway">
							选择颜色
						</div>
						<div class="itemm">
							<a>白色</a>
						</div>
						<div class="itemm">
							<a>黑色</a>
						</div>
						<div class="itemm">
							<a>灰色</a>
						</div>

					</div>

					<div class="buyColor">
						<div class="buyway">
							选择规格
						</div>
						<div class="itemm">
							<a>WIFI 16G</a>
						</div>
						<div class="itemm">
							<a>WIFI 64G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>
						<div class="itemm">
							<a>WIFI 32G</a>
						</div>

					</div>



				</div>
				<p>
					已选择：“白色|wifi 16g”
				</p>
				<!-- 加入购物车功能 -->

				<%
					if (session.getAttribute("username") != null) {
				%>

				<input type="button" value="加入购物车" id="btn1">

				<%
					} else {
				%>
				<a href="<%=path%>/register.jsp"><input type="button"
						value="加入购物车">
				</a>

				<%
					}
				%>





				<!-- 判断用户有没有登录点击跳转的问题 -->
				<%
					if (session.getAttribute("username") != null) {
				%>
				<a
					href="<%=path%>/shopcar/ShopCar_account.action?gid=<%=good.getGid()%>"
					id="btn2"><input type="button" value="立即购买"> </a>

				<%
					} else {

						
				%>
				<a href="<%=path%>/register.jsp"><input type="button"
						value="立即购买"> </a>
				<%
					}
				%>



				<!--<p class="attention">
					注意：此商品可提供普通发票，不提供增值税发票。
				</p>  -->

			</div>
		</div>

		<div class="comWidth haha">
			<div class="leftIntroduce">

				<div class="goodTrade">
					<h3>
						同价位
					</h3>


					<%
						List<Goods> list2 = gdao.samePrice(23);
						int tag2 = 0;
						for (Goods goods : list2) {
							tag2++;
							if (tag2 == 4) {
								break;
							}
					%>
					<div class="good">
						<div class="goodImg">
							<img alt="" src="image/sanxin.jpg">
						</div>
						<div class="intro">
							<%=goods.getGname()%>
						</div>
					</div>
					<%
						}
					%>




				</div>

				<div class="goodTrade">
					<h3>
						最终购买的
					</h3>

					<%
						List<Goods> list1 = gdao.bestSell(0);
						int tag = 0;
						for (Goods goods : list1) {
							tag++;
							if (tag == 4) {
								break;
							}
					%>
					<div class="good">
						<div class="goodImg">
							<img alt="" src="image/sanxin.jpg">
						</div>
						<div class="intro">
							<%=goods.getGname()%>
						</div>
					</div>
					<%
						}
					%>

				</div>

			</div>


			<!-- 右边的情况 -->
			<div class="goodIntroduce">


				<h3>
					产品介绍
				</h3>
				<h3>
					商品评价
				</h3>


				<div class="valuationG">





					<%
						ValuationDAO vdao = new ValuationDAOImpl();
						
						//这里传入的是商品id
						List<Valuation> valutionList = vdao.reValuation(good.getGid());
						for (Valuation valuation : valutionList) {
					%>

					<div>
						<div class="lva">

							<div>
								会员:<%=valuation.getUid()%></div>

						</div>
						<div class="rva">
							<div>
								星级:<%=valuation.getStar()%>
								星
							</div>
							<div>
								评价内容:<%=valuation.getText()%>
							</div>
							<div>
							踩(<span class="nadd" title="<%=valuation.getVid() %>"><%=valuation.getYnumber()%></span>)	 顶(<span class="yadd" title="<%=valuation.getVid() %>"><%=valuation.getNnumber()%></span>)
							</div>

						</div>
					</div>



					<%
						}
					%>






				</div>






			</div>

		</div>


		<div class="foot">
			<p>
				慕课简介|慕课公告| 招纳贤士| 联系我们|客服热线：400-675-1234
			</p>
			<p>
				Copyright © 2006 - 2014 慕课版权所有 京ICP备09037834号 京ICP证B1034-8373号
				某市公安局XX分局备案编号：123456789123
			</p>
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
			<img alt="" src="image/believe.jpg">
		</div>


	</body>
</html>
