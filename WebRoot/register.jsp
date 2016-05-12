<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<link rel="stylesheet" type="text/css" href="css/register.css">
	</head>
	<body>
		<div class="head">
			<div class="limit">
				<h3>
					欢迎登陆
				</h3>
			</div>
		</div>
		<div class="rebody limit">
			<div class="rebox">


				<div class="limit1">

					<form action="<%=path%>/users/Users_login.action" method="post">
						邮箱/用户名/已验证手机
						<br />
						<input type="text" class="comInput" name="username">
						<br />
						密码
						<br />
						<input type="password" class="comInput" name="password">
						<br />
						
				
						
						<br />
						<input type="submit" value="登陆" class="comInput login">
					</form>

					<p>
						
					</p>
					<p>
						
				</div>


			</div>
			<div class="insile fr">
				<a href="<%=path%>/login.jsp">免费注册</a>>>
			</div>
		</div>
	</body>
</html>
