<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/30
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
          <sec:authorize  ifAllGranted="ROLE_USER" >
            <li><a href="#">My Account</a></li>
            <li><a href="/logout.html">Log Out</a></li>
            <li>Hello.<sec:authentication property="name"/></li>
          </sec:authorize>
          <sec:authorize  ifNotGranted="ROLE_USER" >
            <li>Hello.Guest </li>
            <li><a href="/login.html">Sign in</a></li>
          </sec:authorize>



        </ul>
      </div>
      <!-- END TOP BAR MENU -->
    </div>
  </div>
</div>

