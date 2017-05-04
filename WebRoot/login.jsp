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
    
    <title>登陆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/login/reset.css">
	<link rel="stylesheet" type="text/css" href="css/login/structure.css">
	<script type="text/javascript" src="js/login/jquery.min.js"></script>
	<script type="text/javascript" src="js/login/check.js"></script>
  </head>
  
  <body>
  	       <!-- 头部 -->
	<jsp:include page="header.jsp"></jsp:include>
<form class="box login" action="log" method="post">
	<fieldset class="boxBody">
		
	  <div style="width:280px;height:32px;">
	  <div style="width=30%; float:left">
	  <label>用户名</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "nameError" style="color:red">${nameError}</span>
	  <span id = "nameError2" style="color:red">${nameError}</span>
	  <s:fielderror style="list-style:none;color:red;">
    	<s:param>par.userName</s:param>
      </s:fielderror>
	  </div>
	  </div>
	  <input type="text" id="name" name="par.userName" placeholder="请输入用户名">

	  <div style="width:280px;height:32px;">
	  <div style="width=30%; float:left">
	  <label>密码</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "passError" style="color:red">${passError }</span>
		<s:fielderror style="list-style:none;color:red;">
    	<s:param>par.userPass</s:param>
    	</s:fielderror>
	  </div>
	  </div>
	  <input type="password" name="par.userPass" placeholder="请输入密码">

	</fieldset>
	<footer>
	  <button type="submit" id="loginButton" class="btnLogin" tabindex="4">登陆</button>
	</footer>
</form>
  </body>
</html>












