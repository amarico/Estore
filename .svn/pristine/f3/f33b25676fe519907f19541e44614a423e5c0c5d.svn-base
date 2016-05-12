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
		<link rel="stylesheet" type="text/css" href="css/adminCenter.css">
		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="js/adminCenter.js"></script>

	</head>
	<body>
 
		<!-- 顶栏部分 -->
		<div class="head">
			<div class="comWidth">
				<!-- 上顶栏 -->
				<div class="headline">
					
					
                  
					<span>   <%=session.getAttribute("adminName")%>
              <a href="<%=path%>/users/Users_logout.action">注销</a></span>
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
					<span title="1">用户中心</span>
					<span title="2">添加商品</span>
					<span title="3">商品删除</span>
				</div>
				<!-- 内容 -->
				<div class="guidecontent">
					<div class="usercenter">
					<!-- 这里放置的是用户的信息 -->
					<%
					UsersDAO udao=new UsersDAOImpl();
					List<Users> list=udao.reUsersDetail();
					for(Users users:list){
					
					
					%>
					<span>用户名：<%=users.getUsername() %></span>
					
					<span>用户地址：<%=users.getAddress() %></span>
				
					<span>用户邮箱：<%=users.getEmail() %></span>
					<br/>
					<%
					}
					
					 %>  
					

					</div>
					<div class="goodsAdd">
                       <form action="<%=path%>/goods/Goods_goodsAdd.action " method="post">
                       
                      <span>商品名:<input type="text" name="gname"   /></span> 
                      <br/> 
                      <span>价格:<input type="text" name="gprice"   /></span> 
                      <br/> 
                      <span>详情表:<input type="text" name="gsid"/></span> 
                      <br/>
                       <button type="submit">提交</button>
                       
                       </form>    
						
					</div>
					<div class="goodsDelete">
                  <!-- 列出所有的商品 -->
                  <%
                  
                  GoodsDAO gdao=new GoodsDAOImpl();
                 List<Goods> goodsList= gdao.reAllGoods();
                 for(Goods good:goodsList){
                 %>
                 <span>商品名:<%=good.getGname() %></span>
                 <span>价格:<%=good.getGprice() %></span>
                 <span>父类:<%=good.getGsid() %></span>
                 <a href="<%=path%>/goods/Goods_goodsDelete.action?gid=<%=good.getGid() %>">删除</a>
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
