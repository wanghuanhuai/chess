<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/30
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header">
  <div class="container">
    <a class="site-logo" href="shop-index.html"><img src="<%=basePath%>/assets/frontend/layout/img/logos/lanson-bmp.bmp" alt="Metronic Shop UI"></a>

    <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

    <!-- BEGIN CART -->

    <!--END CART -->

    <!-- BEGIN NAVIGATION -->
    <div class="header-navigation" >
      <ul>

        <li class="active"><a href="/">glass</a></li>
        <li class="dropdown dropdown100 nav-catalogue">
          <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
            New

          </a>
          <ul class="dropdown-menu">
            <li>
              <div class="header-navigation-content">
                <div class="row">
                  <c:forEach items="${products}" var="product" varStatus="status" >
                  <c:if test="${status.count/1<5}" >
                     <c:forEach items="${product.imageInfogs}" var="item" >

                  <div class="col-md-3 col-sm-4 col-xs-6">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <a  target="_blank" href="shop-item.html?id=${product.id}"><img src="<%=basePath%>${item.image_location}" class="img-responsive" alt="${item.imageName}"></a>
                      </div>
                      <h3><a  target="_blank" href="shop-item.html?id=${product.id}">${product.productName}</a></h3>
                    </div>
                  </div>
                    </c:forEach>
                  </c:if>
                  </c:forEach>

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
            <form action="">
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