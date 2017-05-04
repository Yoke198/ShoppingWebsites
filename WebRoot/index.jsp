<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>数码购物平台</title>
    
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
  <body>
    
   <!-- 头部 -->
	<jsp:include page="header.jsp"></jsp:include>
     
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/index/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="skipcart.html?method=show"><s:text name="index.header.cart"></s:text> - <span class="cart-amunt">100</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html"><s:text name="index.navigation.home"></s:text></a></li>
                        <li><a href="shiyuangou.jsp"><s:text name="index.navigation.zone"></s:text></a></li>
                        <li><a href="xiangou.jsp"><s:text name="index.navigation.purchasing"></s:text></a></li>
                        <li><a href="zuixinjiexiao.jsp"><s:text name="index.navigation.announce"></s:text></a></li>
                        <li><a href="shaidan.jsp"><s:text name="index.navigation.share"></s:text></a></li>
                        
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="img/index/h4-slide.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								iPhone <span class="primary">6 <strong>Plus</strong></span>
							</h2>
							<h4 class="caption subtitle"><s:text name="index.slider.iphone.subtitle"></s:text></h4>
							<a class="caption button-radius" href="#"><span class="icon"></span><s:text name="index.slider.shopping"></s:text></a>
						</div>
					</li>
					<li><img src="img/index/h4-slide2.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								<s:text name="index.slider.school.title"></s:text>
							</h2>
							<h4 class="caption subtitle"><s:text name="index.slider.school.subtitle1"></s:text> & <s:text name="index.slider.school.subtitle2"></s:text>.*</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span><s:text name="index.slider.shopping"></s:text></a>
						</div>
					</li>
					<li><img src="img/index/h4-slide3.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								Apple <span class="primary">Store <strong>Ipod</strong></span>
							</h2>
							<h4 class="caption subtitle"><s:text name="index.slider.ipod"></s:text></h4>
							<a class="caption button-radius" href="#"><span class="icon"></span><s:text name="index.slider.shopping"></s:text></a>
						</div>
					</li>
					<li><img src="img/index/h4-slide4.png" alt="Slide">
						<div class="caption-group">
						  <h2 class="caption title">
								Apple <span class="primary">Store <strong>Ipod</strong></span>
							</h2>
							<h4 class="caption subtitle">& <s:text name="index.slider.AirPods.subtitle"></s:text></h4>
							<a class="caption button-radius" href="#"><span class="icon"></span><s:text name="index.slider.shopping"></s:text></a>
						</div>
					</li>
				</ul>
			</div>
			<!-- ./Slider -->
    </div> <!-- End slider area -->
    
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p><s:text name="index.promo.day"></s:text></p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p><s:text name="index.promo.shipping"></s:text></p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p><s:text name="index.promo.pay"></s:text></p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p><s:text name="index.promo.product"></s:text></p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title"><s:text name="index.maincontent.title"></s:text></h2>
                        <div class="product-carousel">
                        
                        <c:forEach items="${allGoods}" var="g">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="${g.gimg }" alt="">
                                    <div class="product-hover">
                                      
                                        <a href="details.html?c_id=${g.cid }" class="view-details-link"><i class="fa fa-link"></i> 查看详情</a>
                                    </div>
                                </div>
                                
                                <h2><a href="single-product.html">${g.gname }</a></h2>
                                <div class="product-carousel-price">
                                    <em>揭晓倒计时</em>
                              
                                    <span>
                                    <b id="counts1">1 ：10分</b>
                                    </span>
                               
                                </div> 
                            </div>
                           </c:forEach>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="img/index/brand1.png" alt="">
                            <img src="img/index/brand2.png" alt="">
                            <img src="img/index/brand3.png" alt="">
                            <img src="img/index/brand4.png" alt="">
                            <img src="img/index/brand5.png" alt="">
                            <img src="img/index/brand6.png" alt="">
                            <img src="img/index/brand1.png" alt="">
                            <img src="img/index/brand2.png" alt="">                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title"><s:text name="index.widget.title1"></s:text></h2>
                        <a href="" class="wid-view-more"><s:text name="index.widget.subtitle"></s:text></a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Apple new mac book 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Apple new i phone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title"><s:text name="index.widget.title2"></s:text></h2>
                        <a href="#" class="wid-view-more"><s:text name="index.widget.subtitle"></s:text></a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Sony playstation microsoft</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Sony Smart Air Condtion</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Samsung gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title"><s:text name="index.widget.title3"></s:text></h2>
                        <a href="#" class="wid-view-more"><s:text name="index.widget.subtitle"></s:text></a>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Apple new i phone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Samsung gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src="img/index/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.html">Sony playstation microsoft</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
	<!-- 尾部 -->
	<jsp:include page="foot.jsp"></jsp:include>
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="js/index/jquery.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/index/owl.carousel.min.js"></script>
    <script src="js/index/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/index/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/index/main.js"></script>
    
	<!-- 倒计时 -->
    <script src="js/index/countdown.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="js/index/bxslider.min.js"></script>
	<script type="text/javascript" src="js/index/script.slider.js"></script>
  </body>
</html>

