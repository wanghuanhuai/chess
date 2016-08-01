<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/30
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
  <%@include file="/webpage/shop/common/css-import.jsp"%>
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
<!-- BEGIN STYLE CUSTOMIZER -->
<!-- END BEGIN STYLE CUSTOMIZER -->

<!-- BEGIN TOP BAR -->
<%@include file="/webpage/shop/common/top.jsp"%><!-- END TOP BAR -->

<!-- BEGIN HEADER -->
<%@include file="/webpage/shop/common/head.jsp"%>
<!-- Header END -->

<div class="main">
  <div class="container">
    <ul class="breadcrumb">
      <li><a href="/">Home</a></li>
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

          </li>

        </ul>


        <%@include file="/webpage/shop/common/hot-products.jsp"%>
      </div>
      <!-- END SIDEBAR -->

      <!-- BEGIN CONTENT -->
      <div class="col-md-9 col-sm-7">
        <div class="product-page">
          <div class="row">
          
            <div class="col-md-6 col-sm-6">
              <div class="product-main-image">
                <c:forEach items="${product.imageInfogs}" var="item"  varStatus="status">
                   <c:if test="${status.first}" >
                 <img src="<%=basePath%>${item.image_location}" alt="${item.imageName}" class="img-responsive" data-BigImgsrc="<%=basePath%>${item.image_location}">
                   </c:if>
                </c:forEach>
              </div>
              <div class="product-other-images">
                <c:forEach items="${product.imageInfogs}" var="item"  varStatus="status">
                  <a href="<%=basePath%>${item.image_location}" class="fancybox-button" rel="photos-lib"><img alt="${item.imageName}" src="<%=basePath%>${item.image_location}"></a>
                </c:forEach>
              </div>
            </div>
            <div class="col-md-6 col-sm-6">
              <h1>${product.productName}</h1>
              <div class="price-availability-block clearfix">
                <div class="availability">
                  Availability: <strong>In Stock</strong>
                </div>
              </div>
              <div class="description">
                <p>${product.productShortDes}</p>
              </div>
              <div class="review">
                <input type="range" value="${average}" step="0.25" id="backing4">
                <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-ispreset="true" data-rateit-readonly="true" data-rateit-min="0" data-rateit-max="5">
                </div>
                <a href="javascript:">${totalCount} reviews</a>&nbsp;&nbsp;|
              </div>
              <ul class="social-icons">
                <li><a class="facebook" data-original-title="facebook" href="javascript:"></a></li>
                <li><a class="twitter" data-original-title="twitter" href="javascript:"></a></li>
                <li><a class="googleplus" data-original-title="googleplus" href="javascript:"></a></li>
                <li><a class="evernote" data-original-title="evernote" href="javascript:"></a></li>
                <li><a class="tumblr" data-original-title="tumblr" href="javascript:"></a></li>
              </ul>
            </div>

            <div class="product-page-content">
              <ul id="myTab" class="nav nav-tabs">
                <li><a href="#Description" data-toggle="tab">Description</a></li>
                <li class="active"><a href="#Reviews" data-toggle="tab">Reviews (${totalCount})</a></li>
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade" id="Description">
                  <p>${product.productDes} </p>
                </div>
                <div class="tab-pane fade in active" id="Reviews">
                  <!--<p>There are no reviews for this product.</p>-->
                  <div id="ReviewList">


                  </div>
                <!-- page -->
                    <div class="col-md-8 col-sm-8" id="page_navigation" > </div>

                  <!-- BEGIN FORM-->
                  <form action="/shopitem/review.html" class="reviews-form" role="form">
                     <input name="productId" type="hidden" value="${product.id}">
                    <h2>Write a review</h2>
                    <div class="form-group">
                      <label for="review">Review <span class="require">*</span></label>
                      <textarea name="reviewText" class="form-control" rows="8" id="review"></textarea>
                    </div>
                    <div class="form-group">
                <%--@declare id="rating"--%><label for="Rating">Rating</label>
                      <input name="reviewRate" type="range" value="5.0" step="0.25" id="backing5">
                      <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                      </div>
                    </div>
                    <div class="padding-top-20">
                      <button type="submit" class="btn btn-primary">Send</button>
                    </div>
                  </form>
                  <!-- END FORM-->
                </div>
              </div>
            </div>

            <div class="sticker sticker-sale"></div>
          </div>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->

    <!-- BEGIN SIMILAR PRODUCTS -->

    <!-- END SIMILAR PRODUCTS -->
  </div>
</div>

<%@include file="/webpage/shop/common/foot.jsp"%>

<!-- END FOOTER -->

<!-- BEGIN fast view of a product -->
<!-- END fast view of a product -->

<input type="hidden" id="pageCount" value="<c:out value="${count}"></c:out>">
<input type="hidden" id="product_id" value="${product.id}">
<input type="hidden" id="cateId" value="<c:out value="${cateId}"></c:out>">




<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="<%=basePath%>/assets/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="<%=basePath%>/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/scripts/bootstrap-paginator.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="<%=basePath%>/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="<%=basePath%>/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src='<%=basePath%>/assets/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="<%=basePath%>/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
<script src="<%=basePath%>/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

<script src="<%=basePath%>/assets/frontend/layout/scripts/layout.js" type="text/javascript"></script>
<script type="text/javascript">



  jQuery(document).ready(function() {


    var rData = [] ;
    var htmlchar = '';
    var length ;
    var productId= $('#product_id').val();
    var page_count=$('#pageCount').val() ;
    var cateId= $('#cateId').val();
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
          if(a[i].id  == cateId){
            html+='<li class="list-group-item dropdown clearfix  active"><a href="?cateid='+a[i].id+'" ><i class="fa fa-angle-right"></i>'+a[i].text+'</a>';

          }else{
            html+='<li class="list-group-item dropdown clearfix  "><a href="/?cateid='+a[i].id+'" ><i class="fa fa-angle-right"></i>'+a[i].text+'</a>';
          }
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

//   评论列表,分页
    $.ajax({
      url: "/shopitem/reviewList.html",
      datatype: 'json',
      type: "Post",
      async: false,
      data: "productId="+productId+"&page=1",
      success: function (data) {
        if (data != null) {
          var str= "";
          if (data != null) {
            $.each(data, function(i, value) {

                <!-- PRODUCT ITEM START -->
                str+=' <div class="review-item clearfix"> '+
                '    <div class="review-item-submitted"> '+
                '     <strong>'+value.userName+'</strong> '+
                '       <em>'+value.reviewTime+'</em> '+
                '  <div class="rateit" data-rateit-value="'+value.reviewRate+'" data-rateit-ispreset="true" data-rateit-readonly="true"></div>'+
                '       </div> '+
                '         <div class="review-item-content">'+
                '          <p>'+value.reviewText+'</p>'+
                '   </div> '+
                '   </div>';
                <!-- PRODUCT ITEM END -->

            });

            $('#ReviewList').append(str);
            LoadJS(0,"assets/global/plugins/rateit/src/jquery.rateit.js");


          }


          var pageCount = page_count; //取到pageCount的值(把返回数据转成object类型)
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
                url: "/shopitem/reviewList.html",
                type: "Post",
                async: false,
                data: "productId="+productId+"&page=" + page,

                success: function (data1) {
                  var str= "";
                  $('#ReviewList').html('');
                  if (data1 != null) {
                    length = data1.length;
                    $.each(data1, function(i, value) {

                      <!-- PRODUCT ITEM START -->
                      str+=' <div class="review-item clearfix"> '+
                              '    <div class="review-item-submitted"> '+
                              '     <strong>'+value.userName+'</strong> '+
                              '       <em>'+value.reviewTime+'</em> '+
                              '  <div class="rateit" data-rateit-value="'+value.reviewRate+'" data-rateit-ispreset="true" data-rateit-readonly="true"></div>'+
                              '       </div> '+
                              '         <div class="review-item-content">'+
                              '          <p>'+value.reviewText+'</p>'+
                              '   </div> '+
                              '   </div>';
                      <!-- PRODUCT ITEM END -->

                    });
                    $('#ReviewList').append(str);}
                  LoadJS(0,"assets/global/plugins/rateit/src/jquery.rateit.js");
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

    Layout.init();
    Layout.initOWL();
    Layout.initImageZoom();
    Layout.initTouchspin();
    Layout.initUniform();


    function LoadJS( id, fileUrl )

    {

      var scriptTag = document.getElementById( id );

      var oHead = document.getElementsByTagName('HEAD').item(0);

      var oScript= document.createElement("script");

      if ( scriptTag   ) oHead.removeChild( scriptTag   );

      oScript.id = id;

      oScript.type = "text/javascript";

      oScript.src=fileUrl ;

      oHead.appendChild( oScript);

    }


  });
</script>


<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>