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
		<link rel="stylesheet" type="text/css" href="css/valuation.css">
	</head>
	<body>



		<div class="head">
			<div class="comWidth">
				<span class="fl">收藏乐购</span>
				<p class="fr">
					欢迎来到乐购网！[登录]&nbsp;[免费注册]
				</p>
			</div>
		</div>
		<div class="headamong">
			<div class="comWidth">
				<div class="fl logoPos">
					
				</div>
				<div class="fl searchText">
					<form>
						<input type="text" class="searchMessage fl">
						<input type="button" value="搜 索" class="searchButton fl">
					</form>
				</div>
				<div class="fr shopcar">
					<span class="fl">购物车</span>
					<li class="fr">
						0
					</li>
				</div>
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
		<%
			GoodsDAO gdao = new GoodsDAOImpl();
			Goods good = gdao.thisGood(1);
		%>
		<div class="comWidth">
			<p class="Messageguide">
				
				<!-- 首页 > 平板电脑 > 平板电脑 > Apple 苹果 > MD531CH/A -->
				
				<%
					//获取该商品的id,这里先写死
					int i = 0;
					String[] attr = new String[10];
					ClassifyDAO cdao = new ClassifyDAOImpl();
					Classify classify = cdao.reIdClassify(19);
					attr[i++] = classify.getCname();
					Classify rclassify = new Classify();
					rclassify = cdao.reFaClassify(classify);
					attr[i++] = rclassify.getCname();
					while (rclassify.getCparent() != 0) {
						rclassify = cdao.reFaClassify(rclassify);
						if (rclassify.getCparent() == 0) {
							attr[i++] = "首页 ";
							break;
						} else {
							attr[i++] = rclassify.getCname();
						}

					}

					for (int y = i - 1; y >= 0; y--) {
				%>
				<%=attr[y]%>>

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
				<div class="smallpic"></div>
			</div>
			<div class="rightArea fr">

				<h3>
					<%=good.getGname()%>
				</h3>
				<p>
					本店价:
					<%=good.getGprice()%>元
					<p>
						<p>
							优惠 购ipad加价优惠够配件或USB充电插座
						</p>
						<div class="goodeDetail">
						</div>
						<p>
							已选择：“白色|wifi 16g”
						</p>
						<input type="button" value="加入购物车">
						<input type="button" value="立即购买">
						<p class="attention">
							注意：此商品可提供普通发票，不提供增值税发票。
						</p>
			</div>
		</div>


		<div class="comWidth haha">
			<div class="leftIntroduce">

				<div class="goodTrade">
					<h3>
						同价位
					</h3>


					<%
						List<Goods> list = gdao.samePrice(23);
						for (Goods goods : list) {
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
						for (Goods goods : list1) {
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
				<!-- 这个是商品凭评价表抽取数据出来 -->

				<div class="valuationG">
					商品评价

					<%
					ValuationDAO vdao = new ValuationDAOImpl();
					List<Valuation> vlist = vdao.reValuation(3);

					for (Valuation valuation : vlist) {
				    %>

					<li><%=valuation.getGid()%></li>
					<li><%=valuation.getNnumber()%></li>
					<li><%=valuation.getNnumber()%></li>
					<%
						}
					%>
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
