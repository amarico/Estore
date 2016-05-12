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

		<title>My JSP 'MyJsp.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="stylesheet" type="text/css" href="css/assort.css">

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


		<div class="goodD">
			<div class="comWidth">

				<div class="leftAr fl">





					<h3>
						手机&nbsp;相机&nbsp;数码
					</h3>







					<dl>
						<dt>
							手机通讯
						</dt>

						<%
							ClassifyDAO cdao = new ClassifyDAOImpl();
							List<Classify> list = cdao.reClassify(1);
							for (Classify classify : list) {
						%>

						<dd>
							<%=classify.getCname()%>&nbsp;
							<br />
						</dd>

						<%
							}
						%>

					</dl>

				</div>


				<div class="rightAr fr">
					<div class="banner">
						<img alt="" src="image/biglook.jpg">
					</div>
					<div class="guidel">
						<h3>
							数码影像
						</h3>
						<div class="goodp">

							<%
								GoodsDAO gdao = new GoodsDAOImpl();
								List<Goods> list1 = gdao.uniqueGoods(1);
								for (Goods goods : list1) {
							%>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									<%=goods.getGname()%>
								</p>
								<span>$<%=goods.getGprice()%></span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<%
								}
							%>



							
						</div>

						<div class="goodp">
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
						</div>


					</div>


					<div class="guidel">
						<h3>
							数码影像
						</h3>
						<div class="goodp">
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
						</div>

						<div class="goodp">
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
							<div>
								<img alt="" src="image/good43.jpg">
								<p>
									Canon 佳能 IXUS 132 数码相机 粉色（1600 像素 2.7”LCD）
								</p>
								<span>$2199</span>
								<p>
									评论：11111 （79条）
								</p>
							</div>
						</div>


					</div>




					<!-- 放置商品展示的地方 -->
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
