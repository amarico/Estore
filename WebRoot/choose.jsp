<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link rel="stylesheet" type="text/css" href="css/choose.css">
  </head>
  <body>






   <div class="head">
   <div class="comWidth">
    <span class="fl">收藏乐购</span>
    <p class="fr">欢迎来到乐购网！[登录]&nbsp;[免费注册]</p>
   </div>
   </div>
     <div class="headamong">
      <div class="comWidth">
        <div class="fl logoPos"></div>
        <div class="fl searchText"><form><input type="text" class="searchMessage fl"><input type="button" value="搜 索" class="searchButton fl"></form></div>
        <div class="fr shopcar"><span class="fl">购物车</span><li class="fr">0</li></div>
      </div>
   </div>
 
 
 <div class="guideLine">
   <div class="comWidth">
   <h3>全部商品分类</h3>
      <ul>
				<li class="active">数码城</li>
				<li>天黑黑</li>
				<li>团购</li>
				<li>发现</li>
				<li>二手特卖</li>
				<li>名品会</li>
      </ul>
   </div>
 </div>

<div class="comWidth mbody">
<div class="leftArea fl">

<h3>产品分类</h3>
<h4>手机通讯</h4>
<ul class="brandD">
<li>手机</li>
<li>对讲机</li>

</ul>


<h4>手机通讯</h4>
<ul class="brandD">
<li>手机</li>
<li>对讲机</li>

</ul>

<h4>手机通讯</h4>
<ul class="brandD">
<li>手机</li>
<li>对讲机</li>

</ul>

<h4>手机通讯</h4>
<ul class="brandD">
<li>手机</li>
<li>对讲机</li>

</ul>
<h4>手机通讯</h4>
<ul class="brandD">
<li>手机</li>
<li>对讲机</li>

</ul>



</div>
<div class="rightArea fr">
<div class="choooseDea">



</div>
<div class="goodshow">


</div>
</div>
</div>

  <div class="foot">
    <p>乐购简介|乐购公告| 招纳贤士| 联系我们|客服热线：400-110-120</p>
   <p>Copyright © 2006 - 2014 乐购版权所有 ICP备090000号 京ICP证B1034-0000号
						成都市公安局武侯分局备案编号：123456789</p> 
   <img alt="" src="image/believe.jpg">
   <img alt="" src="image/believe.jpg"><img alt="" src="image/believe.jpg"><img alt="" src="image/believe.jpg">
   </div>


  </body>
</html>
