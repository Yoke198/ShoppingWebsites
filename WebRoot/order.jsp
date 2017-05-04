<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
    

  </head>
  <jsp:include page="header.jsp"></jsp:include>
  
  <body>
  
  		    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>订单</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
                <div class="col-md-8" style="margin-left:230px;">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="post" action="#">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">商品</th>
                                            <th class="product-price">价格</th>
                                            <th class="product-quantity">数量</th>
                                            
                                        </tr>
                                    </thead>
                                    
                                    
                                 <c:forEach items="${shop}" var="goods">
                                    <tbody>
                                        <tr name="${goods.cid }">
                                            <td class="product-remove">
                                                <a title="删除"  href="javascript:void(0)" onclick="deleteTr(${goods.cid})"></a> 
                                            </td>

                                            <td class="product-thumbnail">
                                                <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="${goods.gimg}"></a>
                                            </td>

                                            <td class="product-name">
                                                <a href="single-product.html">${goods.gname }</a> 
                                            </td>

                                            <td class="product-price">
                                                <span class="amount">${goods.gprice}</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <a id="minus" class="minus" herf="#" gid="${goods.cid}" onclick="pm(${goods.cid},'minus')" style="cursor:pointer;">-</a>
                                                    <input id="number${goods.cid}" size="4" title="Qty" value="${goods.goodsnumber }" style="width:32px; text-align:center;">
                                                    <a id="plus" class="plus" herf="#" gid="${goods.cid}" onclick="pm(${goods.cid},'plus')"  style="cursor:pointer;">+</a>
                                                </div>
                                            </td>

                                            
                                        </tr>

                                    </tbody>
                               		<div style="height:50px;line-height: 50px">总价：${goods.gprice}<br/></div>
                                   </c:forEach>
                                </table>
                                  <a href="index.html">确定</a>
                            </form>
                            </div>
                            </div>
                            </div>

                            
        <script type="text/javascript" src="js/index/jquery.min.js"></script>
		
		<script type="text/javascript">
		
			function pm(gid,type){
			
				var id = "#number"+gid
			
				$.post("skipcart.html?method=calculates",{"gid":gid,"type":type},function(result){
				
					$(id).val(result);//将数量回填给文本框
					
					});
			
			}
			
			function deleteTr(gid){
			
				var tr = "tr[name="+gid+"]";
			
				$.post("skipcart.html",{"gid":gid,"method":"delete"},function(result){
				
				console.info(tr);
				
				$(tr).remove();
					
				
				})
			
			}
		
		
		
				$(document).ready(function(){
				
					//加
					$("#minus").click(function(){
						var gid = $(this).attr("gid");//编号
						var id = "#number"+gid

						$.post("skipcart.html?method=calculates",{"gid":gid,"type":"minus"},function(result){
						$(id).val(result);//将数量回填给文本框
						});
					});
				
					//减
					$("#plus").click(function(){
						var gid = $(this).attr("gid");//编号
						var id = "#number"+gid
						
						$.post("skipcart.html?method=calculates",{"gid":gid,"type":"plus"},function(result){
						$(id).val(result);//将数量回填给文本框
						});
					});
				});
		
		</script>

  </body>

</html>
















