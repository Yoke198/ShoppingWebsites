<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<jsp:include page="header.jsp"></jsp:include>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Page - Ustora Demo</title>
  
    
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/indexbootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/indexfont-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/indexowl.carousel.css">
    <link rel="stylesheet" href="css/indexstyle.css">
    <link rel="stylesheet" href="css/indexresponsive.css">
    
	<style type="text/css">
		.u-flyer {display: block;width: 50px;height: 50px; top:-20px;border-radius: 50px;position: fixed;z-index: 9999;}
		/* votebox */
		.votebox{width:200px;margin-left:15px;text-align:left;position:relative;z-index:66;}
		/* barbox */
		.barbox{height:16px;line-height:16px;overflow:hidden;}
		.barbox dt a{color:#0048CC;}
		.barbox dd{float:left;}
		.barbox dd.last{color:#999;}
		.barbox dd.barline{width:200px;background:url(img/details/jdtbg.png) left center no-repeat;height:16px;overflow:hidden;display:inline;}
		.barbox dd.barline div.charts{height:16px;overflow:hidden;background:url(img/details/barbg.gif) right center repeat-x;border-radius:8px;}
	</style>
  </head>
  <body>
   

    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
   
                        
                        <div class="row">
                            <div class="col-sm-6" style="width:18%; margin-left:400px; margin-top:50px;">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="${goods.gimg}" alt="">
                                          <ul class="product-tab" role="tablist" style="margin-top:100px; width:615px;text-align:left">
                                            <li role="presentation" class="active">

                                            
                                        </ul>
                                    </div>
                                    
                                    <div class="product-gallery">
                                       
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6" style="margin-top:50px;">
                                <div class="product-inner">
                                    <h2 class="product-name">${goods.gname }</h2>
                                    
                                    <!-- 进度条 -->
									   <div class="votebox">
											<dl class="barbox">
												<dd class="barline">
										<div w="50" style="width:0px;" class="charts"></div>
												</dd>
												
											</dl>
											<dl>
												<dd>已购人次：2510</dd>
												<dd>总需人次：5720</dd>
											</dl>
										</div>
                                    
                                       
                                    
                                    <form action="" class="cart">
                                        
                                        
                                        <a href="javascript:void(0)" id="car" class="add_to_cart_button" addCart="${goods.cid }">加入购物</a>
                                    </form>   
                                    
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    

                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>





   

   
    <!-- Latest jQuery form server -->
    <script src="js/index/jquery.min.js"></script>
    
    <script src="js/index/jquery.fly.js"></script> 
        <!-- 点击加入购物车事件 -->
    
	<script type="text/javascript">

		$(document).ready(function(){
			$("#car").bind("click",function(){
			$.post("skipcart.html",{"cid":$(this).attr("addCart"),"method":"add"},function(result){});
					//$(".add_to_cart_button").unbind("click");
					//$(".add_to_cart_button").removeClass("add_to_cart_button");
			
			});
		
		});

		//特效
		$('.add_to_cart_button').on('click', addCart);
			function addCart(event) {
			
				var offset = $('#end').offset(), flyer = $('<img class="u-flyer" src="img/index/product-thumb-1.jpg"/>');
				flyer.fly({
    				start: {
       					 left: event.pageX,
        				 top: event.pageY
    						},
				    end: {
        					left: 400,
       						 top: -20,
        					width: 20,
        					height: 20	
    }
});
}
	
	</script>
    
    <script language="javascript">
		function animate(){
			$(".charts").each(function(i,item){
				var a=parseInt($(item).attr("w"));
				$(item).animate({
				width: a+"%"
			},1000);
		});
		}
		animate();
	</script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    

  </body>
  <jsp:include page="foot.jsp"></jsp:include>
</html>



















