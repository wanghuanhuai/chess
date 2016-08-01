<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/7/4
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"";
%>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

  <%@include file="/webpage/shop/common/css-import.jsp"%>


</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-404-full-page">

<div class="row-fluid">

  <div class="span12 page-404">

    <div class="number">

      404

    </div>

    <div class="details">

      <h3>Opps, You're lost.</h3>

      <p>

        We can not find the page you're looking for.<br />

        <a href="index.html">Return home</a> or try the search bar below.

      </p>

      <form action="#">

        <div class="input-append">

          <input class="m-wrap" size="16" type="text" placeholder="keyword..." />

          <button class="btn blue">Search</button>

        </div>

      </form>

    </div>

  </div>

</div>

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="media/js/jquery-1.8.3.min.js" type="text/javascript"></script>

<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="media/js/excanvas.js"></script>

<script src="media/js/respond.js"></script>

<![endif]-->

<script src="media/js/breakpoints.js" type="text/javascript"></script>

<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<script src="media/js/app.js"></script>

<script>

  jQuery(document).ready(function() {

    App.init();

  });

</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>