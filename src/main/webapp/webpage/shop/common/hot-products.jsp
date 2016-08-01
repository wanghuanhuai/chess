<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/7/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar-products clearfix">
  <h2>most commented </h2>

  <c:forEach items="${hot}" var="product" varStatus="status" >
    <c:if test="${status.count/1<5}" >
      <c:forEach items="${product.imageInfogs}" var="item" >

        <div class="item">
          <a  target="_blank" href="shop-item.html?id=${product.id}"><img src="<%=basePath%>${item.image_location}" alt="${item.imageName}"></a>
          <h3><a  target="_blank" href="shop-item.html?id=${product.id}">${product.productName}</a></h3>
        </div>
      </c:forEach>
    </c:if>
  </c:forEach>

</div>

