<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'foot.jsp' starting page</title>
    
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
    
        <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <!-- 
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                         -->
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title"><s:text name="index.footer.title1"></s:text></h2>
                        <ul>
                            <li><a href="#"><s:text name="index.footer.title1.account"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title1.history"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title1.Wishlist"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title1.contact"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title1.home"></s:text></a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title"><s:text name="index.footer.title2"></s:text></h2>
                        <ul>
                            <li><a href="#"><s:text name="index.footer.title2.phone"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title2.furnishing"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title2.TV"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title2.computer"></s:text></a></li>
                            <li><a href="#"><s:text name="index.footer.title2.camera"></s:text></a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title"><s:text name="index.footer.title3"></s:text></h2>
                        <p><s:text name="index.footer.title3.content"></s:text> </p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="<s:text name="index.footer.title3.placeholder"></s:text>">
                                <input type="submit" value="<s:text name="index.footer.title3.button"></s:text>">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
  </body>
</html>
