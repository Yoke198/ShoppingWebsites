<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>首页头部</title>

	<!-- Google Fonts -->
    <link rel='stylesheet' type='text/css'>
    <link rel='stylesheet' type='text/css'>
    <link rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/index/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/index/font-awesome.min.css">
    
    
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/index/owl.carousel.css">
    <link rel="stylesheet" href="css/index/style.css">
    <link rel="stylesheet" href="css/index/responsive.css">
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
       <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="index.html"><i class="fa fa-user"></i> <s:text name="index.header.counter"></s:text></a></li>
                            <li><a href="index.html"><i class="fa fa-heart"></i> <s:text name="index.header.heart"></s:text></a></li>
                            <li><i id="end"><img style="width: 20px;height: 20px;" src="img/index/product-thumb-1.jpg"/></i></li>
                            <li><a href="skipcart.html?method=show"> <s:text name="index.header.cart"></s:text></a></li>
                            <li><a href="login.jsp"><i class="fa fa-user"></i> 
                            
                            <c:if test="${empty user}">
                            <s:text name="index.header.login"></s:text>
                            </c:if>
                            
                            <c:if test="${!empty user}">
                        		   欢迎 ${user }
                            </c:if>
                            
                            </a></li>
                            <li><a href="register.html"><i class="fa fa-user"></i> <s:text name="index.header.register"></s:text></a></li>
                            <li> <a href="change.action?language=zh&url=${gjhurl}" id="ch">中文</a></li>
                            <li> <a href="change.action?language=en&url=${gjhurl}" id="en">English</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                           

                            <li class="dropdown dropdown-small">
                             
                                
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
   
  </body>
        <script src="js/index/jquery.min.js"></script>
        <script src="js/index/jquery.cookie.js"></script>    
  
</html>


























