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
		<link rel="stylesheet" type="text/css" href="css/login.css">
		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<!-- 此处处理的是代码的验证问题 -->
		<script>

$(document).ready(function() {

        //点击同意跳转
        $(".submitButton").click(function(){
        
       var length= $("input[type='checkbox']:checked").length;
     
       if(length>0){
        $(".submitButton").attr("type","submit");
        
       }else
       {
       
       alert("请同意用户协议");
       $(".submitButton").attr("type","button");
       
       }
       
       
     
     
        });
        

        //用户名格式
        
        $(".userName").blur(function(){
          var userName=$(".userName").val();
         var nameFormat=/^([u4e00-u9fa5]|[ufe30-uffa0]|[a-za-z0-9_]){3,12}$/;
         if(nameFormat.test(userName)){
         
          $(".warn2").text("");
         }else{
         
           $(".warn2").text("非法字符");
           
            
         
         }
         
         
         
         });

         
         //验证邮箱
         
         $(".email").blur(function(){
          var email=$(".email").val();
          var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
         if(myreg.test(email)){
         
          $(".warn1").text("");
         }else{
         
           $(".warn1").text("邮箱格式不正确");
           
            var userName=/^([u4e00-u9fa5]|[ufe30-uffa0]|[a-za-z0-9_]){3,12}$/;
         
         }
         
         
         
         });
        
         
          //当确认密码框失去焦点的时候触发实践s
          $(".checkPassword").blur(function(){
          
           var password= $(".passWord").val();
           var checkPassword=$(".checkPassword").val();
          
           if(password==checkPassword){
           
                     
         
         	 $(".warn").text("");
           
           }else
           {
           $(".warn").text("密码不一致");
              
    
           
           }
       
          

          
          });
});
       </script>
		
	</head>
	<body>

		<div class="head">
			<div class="limit">
				<h3>
					欢迎注册
				</h3>
			</div>
		</div>

		<div class="mainbody">

			<form  action="<%=path%>/users/Users_resigster.action" method="post">
				<div class="top">
					账户名：
					<input type="text" name="username" class="userName"><span class="warn2"></span>
				</div>
				<div>
					请设置密码:
					<input type="password" name="password" class="passWord">
				</div>
				<div>
					请确认密码:
					<input type="password" class="checkPassword"><span class="warn"></span>
				</div>
				<div>
					邮箱：
					<input type="text" name="email" class="email"><span class="warn1"></span>
				</div>
				<div class="bottom">
					地址：
					<input type="text" name="address">
				</div>

				<p class="deal">
					<input type="checkbox" value="name" class="checkAgree" >
					我已同意用户协议 <span class="warn4"></span>
				</p>
				<div class="foot">
					<input type="submit" value="提交" class="submitButton">
				</div>
			</form>
		</div>






















	</body>
</html>
