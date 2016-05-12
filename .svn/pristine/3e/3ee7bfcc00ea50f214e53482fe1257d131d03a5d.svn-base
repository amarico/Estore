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
		<link rel="stylesheet" type="text/css" href="css/adminLogin.css">
	</head>
	<body>
		<div class="head">
			<div class="limit">
				<h3>
					欢迎管理员登陆
				</h3>
			</div>
		</div>
		<div class="rebody limit">
			<div class="rebox">


				<div class="limit1">

					<form action="<%=path%>/adminss/Admin_login.action" method="post">
						管理员
						<br />
						<input type="text" class="comInput" name="adminName">
						<br />
						密码
						<br />
						<input type="password" class="comInput" name="adminPassword">
						<br />
				
						<input type="submit" value="登陆" class="comInput login">
					</form>

				
				</div>


			</div>
			
		</div>
	</body>
</html>
