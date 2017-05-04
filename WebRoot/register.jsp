<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href="css/register/reset.css" rel="stylesheet">
	<link type="text/css" href="css/register/public.css" rel="stylesheet">
	<link type="text/css" href="css/register/register.css" rel="stylesheet">
	<link rel="shortcut icon" href="favicon.ico" />
	<script src="js/register/jquery.min.js" type="text/javascript"></script>
	<script src="js/register/check.js"></script>
	<script src="js/register/jquery.form.js" type="text/javascript"></script>
	<script src="js/register/json.parse.js" type="text/javascript"></script>

	<style>
	.input_div span{ background:#FFF;}
	
	</style>
  </head>
  
  <body>
       <!-- 头部 -->
	<jsp:include page="header.jsp"></jsp:include>
  
<div class="register_content">
	
		<ul class="step_ul step1 clear">
			<li class="li1">01、填写资料</li>
			<li class="li2">02、完成注册</li>
		</ul>
		
		 <form name="registerForm" id="registerForm" action="reg" method="post" style="padding:60px 40px 88px 40px;font-family:Microsoft Yahei">
			<div class="div_form clear ">
				<label>用户名：</label>
				<div class="input_div input_div1">
					<div style="float:inherit">
					<input id="username" name="par.userName" placeholder="请输入用户名" maxlength="24" type="text">
					</div>
					<div style="float:inherit">
					<span id = "nameError" style="color:red">${nameError}</span>
					<span id = "nameError2" style="color:red">${nameError}</span>
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userName</s:param>
    				</s:fielderror>
    				</div>
				</div>
			</div>
			<div class="div_form clear ">
				<label>密码：</label>
				<div class="input_div input_div3">
				<div style="float:inherit">
					<input id="password1" name="par.userPass" placeholder="请输入密码" maxlength="32" type="password">
				</div>
					<div style="float:inherit">
					<span id = "passError" style="color:red">${passError }</span>
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userPass</s:param>
    				</s:fielderror>
    				</div>
				</div>
			</div>
			<!--  -->
			<div class="div_form clear ">
				<label>确认密码：</label>
				<div class="input_div input_div4">
				<div style="float:inherit">
					<input id="password2" name="par.userPass2" placeholder="再次输入密码" maxlength="32" type="password">
				</div>	
					<div style="float:inherit">
					<span id = "passError2" style="color:red">${passError2}</span>
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userPass2</s:param>
    				</s:fielderror>
    				</div>
				</div>
			</div>
			<div class="div_form clear ">
				<label>邮箱：</label>
				<div class="input_div input_div2">
				<div style="float:inherit">
					<input id="mail" name="par.email" placeholder="请填写正确的邮箱，以便接收账号激活邮件" maxlength="64" type="text">
				</div>	
					<div style="float:inherit">
					<span id = "emailError" style="color:red">${emailError }</span>
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.email</s:param>
    				</s:fielderror>
    				</div>
				</div>
			</div>


            
			<div class="div_form clear ">
				<label></label>
				<div class="input_div">
					<input id="btn" class="btn" value="注册" type="submit">
					
				</div>
			</div>
			
		</form>
		
		<div class="reg_login">
			<p>已有帐号？</p>
			<a class="btn2" href="login">登录</a>
		</div>
		<div class="bg"></div>
	</div>
  </body>

</html>
















