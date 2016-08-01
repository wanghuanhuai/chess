<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/30
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"";
%>

<meta charset="utf-8">
<title>Glass | Lanson Shop</title>

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

<link rel="shortcut icon" href="<%=basePath%>/assets/global/img/favicon.ico"/>
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