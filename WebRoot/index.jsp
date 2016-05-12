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
		<link rel="stylesheet" type="text/css" href="css/main.css">
	</head>
	<body>
		<div class="headBar">
			<div class="topBar">
				<div class="comWidth">
					<div class="leftArea">
						<img src="image/star.jpg">
						<span>收藏乐购</span>
					</div>
					<div class="rightArea">
                       <!-- 用户登录显示 -->
                       <%
                       if(session.getAttribute("username")!=null){
                       
                       %>
                       <%=session.getAttribute("username")%>
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
                       
						
						
					</div>
				</div>
			</div>


			<div class="serchBox">
				<div class="comWidth">
					<div class="logoImage fl">

					</div>
					<div class="serBox fl">
						<form>
							<input type="text" class="serId fl">
							<input type="button" value="搜 索" class="serAction fl">
						</form>
					</div>
					<div class="shopMessage">
					 
						<div class="shopCar fl">
							 <a href="<%=path%>/account.jsp"><img alt="imooc" src="image/shopCar.jpg" class="fl">
								<li  class="fl">
									购物车
								</li> </a>
						</div>
					
						<div class="shopNum fr">
							<li class="fl">
							
							<!-- 这里显示用户对应的购物车里面的商品数量 -->
							
							<% 
							
							if(session.getAttribute("userid")!=null){

		                    ShopCarDAO sdao=new ShopCarDAOImpl();
		                     int k=sdao.reNumber(Integer.parseInt(session.getAttribute("userid").toString()));
							
							   %>
							   
							   <%=k %>
							   <% 
							}
							else{
							
							%>
							0
							<%
							
							}
							
							 %>
							
							
								
							</li>
							<img alt="" src="image/shopnum.jpg" class="fl">
						</div>
					</div>
				</div>
			</div>
			<div class="navBox">
				<div class="comWidth">
					<div class="headLine fl">
						<h2>
							全部商品分类
						</h2>
					</div>
					<div class="keyWord">
						<a href=""><li>
								数码城
							</li> </a>
						<a href=""><li>
								天黑黑
							</li> </a>
						<a href=""><li>
								团购
							</li> </a>
						<a href=""><li>
								发现
							</li> </a>
						<a href=""><li>
								二手特卖
							</li> </a>
						<a href=""><li>
								名品会
							</li> </a>
					</div>
				</div>
			</div>
		</div>
		<div class="snavBox">
			<div class="comWidth">
				<div class="navLine fl">

					<%
						ClassifyDAO cdao = new ClassifyDAOImpl();

						for (int i = 1; i < 6; i++) {
							List<Classify> list = cdao.reClassify(i);
					%>

					<div>
						<div class="fl shopLina">
							<h3>
								<%
									for (Classify classify : list) {
								%>
								<a><%=classify.getCname()%></a>&nbsp;
								<%
									}
								%>
							</h3>

						</div>
						<div class="fr triangle">
							<img alt="" src="image/triangle.jpg">
						</div>
					</div>

					<%
						}
					%>

				</div>


				<div class="biglook fl">
					<img alt="imooc" src="image/biglook.jpg">
				</div>
			</div>
		</div>

		<div class="showD">
			<div class="comWidth">
				<div class="guidepic">
					<img alt="" src="image/guideP.jpg">
					<h1>
						手机数码
					</h1>
				</div>


				<div class="guideDetail">
					<div class="headGuide fl">
						<img alt="" src="image/good1.jpg">
					</div>
					<div class="secondGuide fl">
						<!-- 重复显示这个四次 -->
						<%
							RecommendationDAO rdao = new RecommendationDAOImpl();

							List<Recommendation> rlist = rdao.reRecommendation(300);

							List<Goods> list = rdao.reGoods(rlist);

							for (int i = 0; i < list.size(); i++) {
						%>

						<div class="goods1 fl">
							<div class="good11">

								<div class="good1m">
								<div>
									<a
									href="<%=path%>/introduce.jsp?goodsid=<%=list.get(i).getGid()%>"><img
										alt="" src="<%=path%>/image/<%=list.get(i).getGpic()%>">
								</a>
								</div>
							
                                <div class="good1mm">
                                <p>
                                <%=list.get(i).getGname()%>
									<br />
									<%=list.get(i).getGprice()%>元
								</p>
                                </div>
								
								
								</div>

							</div>
							<div class="good12">
								<div class="smallPic fl">
									<a
									href="<%=path%>/introduce.jsp?goodsid=<%=list.get(i).getGid()%>">
									<img alt="" src="image/good3.jpg"></a>
								</div>
								<div class="picPric fl">
									<%=list.get(i).getGname()%>
									<br />
									<%=list.get(i).getGprice()%>
								</div>
							</div>
						</div>

						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>



		<div class="clearindex">
			<div class="comWidth">
			</div>
		</div>

		<div class="webDetail">
			<div class="comWidth">

				<div class="legalMessage">
					<p>
						乐购简介|乐购公告| 招纳贤士| 联系我们|客服热线：400-110-120
					</p>
					<p>
						Copyright © 2006 - 2014 乐购版权所有 ICP备090000号 京ICP证B1034-0000号
						成都市公安局武侯分局备案编号：123456789
					</p>
				</div>
				<div class="believeweb">
					<img alt="" src="image/believe.jpg">
					<img alt="" src="image/believe.jpg">
					<img alt="" src="image/believe.jpg">
					<img alt="" src="image/believe.jpg">
				</div>
			</div>
		</div>
	</body>
</html>
