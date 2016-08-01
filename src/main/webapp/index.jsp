<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/13
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"";
%>

<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.4
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest (the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>Men category | Metronic Shop UI</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="Metronic Shop UI description" name="description">
    <meta content="Metronic Shop UI keywords" name="keywords">
    <meta content="keenthemes" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <!-- Fonts END -->

    <!-- Global styles START -->
    <link href="<%=basePath%>/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/global/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Global styles END -->

    <!-- Page level plugin styles START -->
    <link href="<%=basePath%>/assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
    <link href="<%=basePath%>/assets/global/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="<%=basePath%>/assets/global/css/components.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/frontend/layout/css/style.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/frontend/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/assets/frontend/layout/css/style-responsive.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="<%=basePath%>/assets/frontend/layout/css/custom.css" rel="stylesheet">


    <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
<!-- BEGIN STYLE CUSTOMIZER -->

<!-- END BEGIN STYLE CUSTOMIZER -->

<!-- BEGIN TOP BAR -->
<div class="pre-header">
    <div class="container">
        <div class="row">
            <!-- BEGIN TOP BAR LEFT PART -->
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <li><i class="fa fa-phone"></i><span>+86 577 8893 3301</span></li>
                    <!-- BEGIN CURRENCIES -->
                    <li class="shop-currencies">
                        <a href="javascript:void(0);" class="current">$</a>
                    </li>
                    <!-- END CURRENCIES -->
                    <!-- BEGIN LANGS -->
                    <li class="langs-block">
                        <a href="javascript:void(0);" class="current">English </a>

                    </li>
                    <!-- END LANGS -->
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <li><a href="shop-account.html">My Account</a></li>
                    <li><a href="page-login.html">Log In</a></li>
                </ul>
            </div>
            <!-- END TOP BAR MENU -->
        </div>
    </div>
</div>
<!-- END TOP BAR -->

<!-- BEGIN HEADER -->
<div class="header">
    <div class="container">
        <a class="site-logo" href="shop-index.html"><img src="<%=basePath%>/assets/frontend/layout/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->

        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation" >
            <ul>
                <li class="dropdown active" id="head">
                    <a class='dropdown-toggle' data-toggle='dropdown'  href='/?cateid=1'>glass </a>

                    <!-- BEGIN DROPDOWN MENU -->
                  <%--<ul class="dropdown-menu">--%>
                        <%--<li class="dropdown-submenu">--%>
                            <%--<a href="shop-product-list.html">Hi Tops <i class="fa fa-angle-right"></i></a>--%>
                            <%--<ul class="dropdown-menu" role="menu">--%>
                                <%--<li><a href="shop-product-list.html">Second Level Link</a></li>--%>
                                <%--<li><a href="shop-product-list.html">Second Level Link</a></li>--%>
                                <%--<li class="dropdown-submenu">--%>
                                    <%--<a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">--%>
                                        <%--Second Level Link--%>
                                        <%--<i class="fa fa-angle-right"></i>--%>
                                    <%--</a>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li><a href="shop-product-list.html">Third Level Link</a></li>--%>
                                        <%--<li><a href="shop-product-list.html">Third Level Link</a></li>--%>
                                        <%--<li><a href="shop-product-list.html">Third Level Link</a></li>--%>
                                    <%--</ul>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li><a href="shop-product-list.html">Running Shoes</a></li>--%>
                        <%--<li><a href="shop-product-list.html">Jackets and Coats</a></li>--%>
                    <%--</ul>--%>

                    <!-- END DROPDOWN MENU -->
                </li>
                <li class="dropdown dropdown100 nav-catalogue">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        New

                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="header-navigation-content">
                                <div class="row">
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/model3.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/model7.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>

                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- Header END -->

<div class="title-wrapper">
    <div class="container"><div class="container-inner">
        <h1><span>GLASS</span> CATEGORY</h1>
        <em>Many styles  are available here</em>
    </div></div>
</div>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Glass</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-5" >
             <ul class="list-group margin-bottom-25 sidebar-menu" >
                 <li class="list-group-item clearfix dropdown active"  id="left">
                     <a href="/?cateid=1" class="collapsed">
                         <i class="fa fa-angle-right"></i>
                         Glass

                     </a>

                      <%--<ul class="dropdown-menu" style="display:block;">--%>
                              <%--<li class="list-group-item dropdown clearfix active">--%>
                                  <%--<a href="javascript:void(0);" class="collapsed"><i class="fa fa-angle-right"></i> Shoes </a>--%>
                                  <%--<ul class="dropdown-menu" style="display:block;">--%>
                                      <%--<li class="list-group-item dropdown clearfix">--%>
                                          <%--<a href="javascript:void(0);"><i class="fa fa-angle-right"></i> Classic </a>--%>
                                          <%--<ul class="dropdown-menu">--%>
                                              <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Classic 1</a></li>--%>
                                              <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Classic 2</a></li>--%>
                                          <%--</ul>--%>
                                      <%--</li>--%>
                                      <%--<li class="list-group-item dropdown clearfix active">--%>
                                          <%--<a href="javascript:void(0);" class="collapsed"><i class="fa fa-angle-right"></i> Sport  </a>--%>
                                          <%--<ul class="dropdown-menu" style="display:block;">--%>
                                              <%--<li class="active"><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Sport 1</a></li>--%>
                                              <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Sport 2</a></li>--%>
                                          <%--</ul>--%>
                                      <%--</li>--%>
                                  <%--</ul>--%>
                          <%--</li>--%>
                          <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Trainers</a></li>--%>
                          <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Jeans</a></li>--%>
                          <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Chinos</a></li>--%>
                          <%--<li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> T-Shirts</a></li>--%>
                      <%--</ul>--%>


                </li>

                </ul>


                <div class="sidebar-products clearfix">
                    <h2>Bestsellers</h2>
                    <div class="item">
                        <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                        <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                        <div class="price">$31.00</div>
                    </div>
                    <div class="item">
                        <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                        <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                        <div class="price">$23.00</div>
                    </div>
                    <div class="item">
                        <a href="shop-item.html"><img src="<%=basePath%>/assets/frontend/pages/img/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                        <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                        <div class="price">$86.00</div>
                    </div>
                </div>
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-7">
                <div class="row list-view-sorting clearfix">
                    <div class="col-md-2 col-sm-2 list-view">
                        <a href="javascript:"><i class="fa fa-th-large"></i></a>
                        <a href="javascript:"><i class="fa fa-th-list"></i></a>
                    </div>
                    <div class="col-md-10 col-sm-10">
                        <div class="pull-right">
                            <label class="control-label">Sort&nbsp;By:</label>
                            <select class="form-control input-sm">
                                <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                                <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                                <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                                <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                                <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                                <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                                <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                                <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                                <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="product">
                <!-- BEGIN PRODUCT LIST -->

                <!-- END PRODUCT LIST -->
                </div>
                <!-- BEGIN PAGINATOR -->

                <div class="row" >
                    <div class="col-md-4 col-sm-4 items-info" id="total"></div>
                    <div class="col-md-8 col-sm-8" id="page_navigation" >
                   </div>

                </div>
                <!-- END PAGINATOR -->
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
    </div>
</div>

<!-- BEGIN BRANDS -->
<div class="brands">
    <div class="container">
        <div class="owl-carousel owl-carousel6-brands">
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/next.jpg" alt="next" title="next"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/next.jpg" alt="next" title="next"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
            <a href="shop-product-list.html"><img src="<%=basePath%>/assets/frontend/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
        </div>
    </div>
</div>
<!-- END BRANDS -->

<!-- BEGIN STEPS -->
<div class="steps-block steps-block-red">
    <div class="container">
        <div class="row">
            <div class="col-md-4 steps-block-col">
                <i class="fa fa-truck"></i>
                <div>
                    <h2>Free shipping</h2>
                    <em>Express delivery withing 3 days</em>
                </div>
                <span>&nbsp;</span>
            </div>
            <div class="col-md-4 steps-block-col">
                <i class="fa fa-gift"></i>
                <div>
                    <h2>Daily Gifts</h2>
                    <em>3 Gifts daily for lucky customers</em>
                </div>
                <span>&nbsp;</span>
            </div>
            <div class="col-md-4 steps-block-col">
                <i class="fa fa-phone"></i>
                <div>
                    <h2>477 505 8877</h2>
                    <em>24/7 customer care available</em>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END STEPS -->

<!-- BEGIN PRE-FOOTER -->
<div class="pre-footer">
    <div class="container">
        <div class="row">
            <!-- BEGIN BOTTOM ABOUT BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>About us</h2>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo consequat. </p>
                <p>Duis autem vel eum iriure dolor vulputate velit esse molestie at dolore.</p>
            </div>
            <!-- END BOTTOM ABOUT BLOCK -->
            <!-- BEGIN BOTTOM INFO BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>Information</h2>
                <ul class="list-unstyled">
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Delivery Information</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Customer Service</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Order Tracking</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Shipping & Returns</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contact Us</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Careers</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="javascript:">Payment Methods</a></li>
                </ul>
            </div>
            <!-- END INFO BLOCK -->

            <!-- BEGIN TWITTER BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2 class="margin-bottom-0">Latest Tweets</h2>
                <a class="twitter-timeline" href="https://twitter.com/twitterapi" data-tweet-limit="2" data-theme="dark" data-link-color="#57C8EB" data-widget-id="455411516829736961" data-chrome="noheader nofooter noscrollbar noborders transparent">Loading tweets by @keenthemes...</a>
            </div>
            <!-- END TWITTER BLOCK -->

            <!-- BEGIN BOTTOM CONTACTS -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>Our Contacts</h2>
                <address class="margin-bottom-40">
                    35, Lorem Lis Street, Park Ave<br>
                    California, US<br>
                    Phone: 300 323 3456<br>
                    Fax: 300 323 1456<br>
                    Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
                    Skype: <a href="skype:metronic">metronic</a>
                </address>
            </div>
            <!-- END BOTTOM CONTACTS -->
        </div>
        <hr>
        <div class="row">
            <!-- BEGIN SOCIAL ICONS -->
            <div class="col-md-6 col-sm-6">
                <ul class="social-icons">
                    <li><a class="rss" data-original-title="rss" href="javascript:"></a></li>
                    <li><a class="facebook" data-original-title="facebook" href="javascript:"></a></li>
                    <li><a class="twitter" data-original-title="twitter" href="javascript:"></a></li>
                    <li><a class="googleplus" data-original-title="googleplus" href="javascript:"></a></li>
                    <li><a class="linkedin" data-original-title="linkedin" href="javascript:"></a></li>
                    <li><a class="youtube" data-original-title="youtube" href="javascript:"></a></li>
                    <li><a class="vimeo" data-original-title="vimeo" href="javascript:"></a></li>
                    <li><a class="skype" data-original-title="skype" href="javascript:"></a></li>
                </ul>
            </div>
            <!-- END SOCIAL ICONS -->
            <!-- BEGIN NEWLETTER -->
            <div class="col-md-6 col-sm-6">
                <div class="pre-footer-subscribe-box pull-right">
                    <h2>Newsletter</h2>
                    <form action="#">
                        <div class="input-group">
                            <input type="text" placeholder="youremail@mail.com" class="form-control">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                  </span>
                        </div>
                    </form>
                </div>
            </div>
            <!-- END NEWLETTER -->
        </div>
    </div>
</div>
<!-- END PRE-FOOTER -->

<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="container">
        <div class="row">
            <!-- BEGIN COPYRIGHT -->
            <div class="col-md-6 col-sm-6 padding-top-10">
                2014 © Metronic Shop UI. ALL Rights Reserved.
            </div>
            <!-- END COPYRIGHT -->
            <!-- BEGIN PAYMENTS -->
            <div class="col-md-6 col-sm-6">
                <ul class="list-unstyled list-inline pull-right">
                    <li><img src="<%=basePath%>/assets/frontend/layout/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
                    <li><img src="<%=basePath%>/assets/frontend/layout/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
                    <li><img src="<%=basePath%>/assets/frontend/layout/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
                    <li><img src="<%=basePath%>/assets/frontend/layout/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
                    <li><img src="<%=basePath%>/assets/frontend/layout/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
                </ul>
            </div>
            <!-- END PAYMENTS -->
        </div>
    </div>
</div>
<!-- END FOOTER -->

<!-- BEGIN fast view of a product -->
<div id="product-pop-up" style="display: none; width: 700px;">
    <div class="product-page product-pop-up">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-3">
                <div class="product-main-image">
                    <img src="<%=basePath%>/assets/frontend/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                </div>
                <div class="product-other-images">
                    <a href="javascript:" class="active"><img alt="Berry Lace Dress" src="<%=basePath%>/assets/frontend/pages/img/products/model3.jpg"></a>
                    <a href="javascript:"><img alt="Berry Lace Dress" src="<%=basePath%>/assets/frontend/pages/img/products/model4.jpg"></a>
                    <a href="javascript:"><img alt="Berry Lace Dress" src="<%=basePath%>/assets/frontend/pages/img/products/model5.jpg"></a>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-9">
                <h1>Cool green dress with red bell</h1>
                <div class="price-availability-block clearfix">
                    <div class="price">
                        <strong><span>$</span>47.00</strong>
                        <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                        Availability: <strong>In Stock</strong>
                    </div>
                </div>
                <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat
                        Nostrud duis molestie at dolore.</p>
                </div>
                <div class="product-page-options">
                    <div class="pull-left">
                        <label class="control-label">Size:</label>
                        <select class="form-control input-sm">
                            <option>L</option>
                            <option>M</option>
                            <option>XL</option>
                        </select>
                    </div>
                    <div class="pull-left">
                        <label class="control-label">Color:</label>
                        <select class="form-control input-sm">
                            <option>Red</option>
                            <option>Blue</option>
                            <option>Black</option>
                        </select>
                    </div>
                </div>
                <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Add to cart</button>
                    <a href="shop-item.html" class="btn btn-default">More details</a>
                </div>
            </div>

            <div class="sticker sticker-sale"></div>
        </div>
    </div>
</div>
<input type="hidden" id="cateId" value="1">
<!-- END fast view of a product -->

<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="<%=basePath%>/assets/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="<%=basePath%>/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="<%=basePath%>/assets/global/scripts/bootstrap-paginator.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="<%=basePath%>/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src='<%=basePath%>/assets/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="<%=basePath%>/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
<script src="<%=basePath%>/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

<script src="<%=basePath%>/assets/frontend/layout/scripts/layout.js" type="text/javascript"></script>
<script type="text/javascript">




    jQuery(document).ready(function() {
        var rData = [] ;
        var htmlchar = '';
        var length ;
        function treeMenu(a){
            this.tree=a||[];
            this.groups={};
        }
        treeMenu.prototype={
            init:function(parent){
                this.group();
                return this.getDom(this.groups[parent]);
            },
            group:function(){
                for(var i=0;i<this.tree.length;i++){
                    if(this.groups[this.tree[i].parent]){
                        this.groups[this.tree[i].parent].push(this.tree[i]);
                    }else{
                        this.groups[this.tree[i].parent]=[];
                        this.groups[this.tree[i].parent].push(this.tree[i]);
                    }
                }
            },
            getDom:function(a){
                if(!a){return ''}
                var html='\n<ul  class="dropdown-menu" style="display:block;">\n';
                for(var i=0;i<a.length;i++){
                    html+='<li class="list-group-item dropdown clearfix"><a href="?cateid='+a[i].id+'" ><i class="fa fa-angle-right"></i>'+a[i].text+'</a>';
                    html+=this.getDom(this.groups[a[i].id]);
                    html+='</li>\n';
                }
                html+='</ul>\n';
                return html;
            }
        };

        $.ajax({
            type: "POST",//提交方式
            async: false,
            url: "/admin/cms/product/category.do", //路径
            success: function(data){
                rData = data;
            }
        });



        <%--$.ajax({--%>
            <%--type: "POST",//提交方式--%>
            <%--async: false,--%>
            <%--url: "/index/product.jspx", //路径--%>
            <%--success: function(data){--%>
                <%--length = data.length;--%>
                <%--$.each(data, function(i, value) {--%>

                    <%--$.each(value.imageInfogs, function(j, value1) {--%>
                        <%--if( i%3==0){--%>
                            <%--htmlchar += ' <div class="row product-list"> ';--%>
                        <%--}--%>

                                    <%--<!-- PRODUCT ITEM START -->--%>
                        <%--htmlchar +=' <div class="col-md-4 col-sm-6 col-xs-12"> '+--%>
                                <%--'   <div class="product-item"> '+--%>
                                <%--'    <div class="pi-img-wrapper">'+--%>
                                <%--'       <img src="<%=basePath%>'+this.image_location+'" class="img-responsive" alt="Berry Lace Dress">'+--%>
                                <%--'       <div>'+--%>
                                <%--'        <a href="<%=basePath%>'+this.image_location+'" class="btn btn-default fancybox-button">Zoom</a>'+--%>
                                <%--'        </div>'+--%>
                                <%--'        </div>'+--%>
                                <%--'       <h3><a href="shop-item.html?id='+value.id+'">'+value.productShortDes+'</a></h3>'+--%>
                                <%--' </div>'+--%>
                                <%--'</div>';--%>
                                    <%--<!-- PRODUCT ITEM END -->--%>
                        <%--if( i%3==2){--%>
                            <%--htmlchar += '</div> ';--%>
                        <%--}--%>
                        <%--if(i==length-1&&(length-1)%3!=2){--%>
                            <%--htmlchar += '</div> ';--%>
                        <%--}--%>

                    <%--});--%>



                <%--});--%>





            <%--}--%>
        <%--});--%>




        var cateId= $('#cateId').val();
        alert(cateId);
        $.ajax({
            url: "/index/product.jspx",
            datatype: 'json',
            type: "Post",
            async: false,
            data: "cateId="+cateId+"&page=1",
            success: function (data) {
                if (data != null) {
                    var str= "";
                    length = data.length;
                    if (data != null) {
                        length = data.length;
                        $.each(data, function(i, value) {

                            if( i%3==0){

                                str+=' <div class="row product-list"> ';
                            }
                            $.each(value.imageInfogs, function(j, value1) {


                                <!-- PRODUCT ITEM START -->
                                str+=' <div class="col-md-4 col-sm-6 col-xs-12"> '+
                                        '   <div class="product-item"> '+
                                        '    <div class="pi-img-wrapper">'+
                                        '       <img src="<%=basePath%>'+this.image_location+'" class="img-responsive" alt="Berry Lace Dress">'+
                                        '       <div>'+
                                        '        <a href="<%=basePath%>'+this.image_location+'" class="btn btn-default fancybox-button">Zoom</a>'+
                                        '        </div>'+
                                        '        </div>'+
                                        '       <h3><a href="shop-item.html?id='+value.id+'">'+value.productShortDes+'</a></h3>'+
                                        ' </div>'+
                                        '</div>';
                                <!-- PRODUCT ITEM END -->


                            });

                            if( i%3==2){
                                str+= '</div> ';
                            }else if(i==length-1){
                                str+='</div> ';
                            }


                        });
                        $('#product').append(str);}

                    var pageCount = 2; //取到pageCount的值(把返回数据转成object类型)
                    var currentPage = 1; //得到urrentPage
                    var options = {

                        bootstrapMajorVersion: 2, //版本
                        currentPage: currentPage, //当前页数
                        totalPages: pageCount, //总页数
                        alignment:"center",
                        itemTexts: function (type, page, current) {
                            switch (type) {
                                case "first":
                                    return "&lt;&lt;";
                                case "prev":
                                    return "&lt;";
                                case "next":
                                    return "&gt;";
                                case "last":
                                    return "&gt;&gt;";
                                case "page":
                                    return page;
                            }
                        },//点击事件，用于通过Ajax来刷新整个list列表
                        onPageClicked: function (event, originalEvent, type, page) {
                            $.ajax({
                                url: "/index/product.jspx?id=" + page,
                                type: "Post",
                                async: false,
                                data: "cateId="+cateId+"&page=" + page,

                                success: function (data1) {
                                    var str= "";
                                    $('#total').html('');
                                    $('#product').html('');
                                    if (data1 != null) {
                                        length = data1.length;
                                        $.each(data1, function(i, value) {

                                            if( i%3==0){

                                                str+=' <div class="row product-list"> ';
                                            }
                                            $.each(value.imageInfogs, function(j, value1) {


                                                <!-- PRODUCT ITEM START -->
                                                str+=' <div class="col-md-4 col-sm-6 col-xs-12"> '+
                                                        '   <div class="product-item"> '+
                                                        '    <div class="pi-img-wrapper">'+
                                                        '       <img src="<%=basePath%>'+this.image_location+'" class="img-responsive" alt="Berry Lace Dress">'+
                                                        '       <div>'+
                                                        '        <a href="<%=basePath%>'+this.image_location+'" class="btn btn-default fancybox-button">Zoom</a>'+
                                                        '        </div>'+
                                                        '        </div>'+
                                                        '       <h3><a href="shop-item.html?id='+value.id+'">'+value.productShortDes+'</a></h3>'+
                                                        ' </div>'+
                                                        '</div>';
                                                <!-- PRODUCT ITEM END -->


                                            });

                                            if( i%3==2){
                                                str+= '</div> ';
                                            }else if(i==length-1){

                                                str+='</div> ';
                                            }


                                        });

                                        }
                                    $('#product').append(str);


                                },

                            });
                        }
                    };
                    $('#page_navigation').bootstrapPaginator(options);
                }
            }
        });








        var html=new treeMenu(rData).init(1);
        $('#left').append(html);
       // $('#product').append(htmlchar);


//        var show_per_page = 12;
//        var number_of_items = length+1;
//        var number_of_pages = Math.ceil(number_of_items/show_per_page);
//        $('#current_page').val(0);
//        $('#show_per_page').val(show_per_page);
//        var navigation_html = '<div class="col-md-4 col-sm-4 items-info">Items 1 to 12 of 12 total</div>';
//        navigation_html +='<div class="col-md-8 col-sm-8">'+
//               ' <ul class="pagination pull-right">'+
//                '<li><a class="previous_link" href="javascript:previous();">&laquo;previous</a></li>';
//        var current_link = 0;
//        while(number_of_pages > current_link){
//            navigation_html += '<li><a class="page_link" href="javascript:go_to_page(' + current_link +')" longdesc="' + current_link +'">'+ (current_link + 1) +'</a></li> ';
//            current_link++;
//        }
//        navigation_html += '<li><a class="next_link" href="javascript:next();">next&raquo;</a></li>'+
//               ' </ul>'+
//                '</div>';
//        $('#page_navigation').html(navigation_html);
//        alert($('#page_navigation .page_link:first'));
//        $('#page_navigation .page_link:first').append('<span>');






        Layout.init();
        Layout.initOWL();
        Layout.initTwitter();
        Layout.initImageZoom();
        Layout.initTouchspin();
        Layout.initUniform();
        Layout.initSliderRange();


    });


</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>