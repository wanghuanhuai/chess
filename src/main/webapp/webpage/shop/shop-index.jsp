<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/13
  Time: 16:59
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
<!-- END TOP BAR -->
<%@include file="/webpage/shop/common/top.jsp"%>
<!-- BEGIN HEADER -->
<%@include file="/webpage/shop/common/head.jsp"%>
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

          </li>

        </ul>

        <%@include file="/webpage/shop/common/hot-products.jsp"%>
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

<!-- END BRANDS -->
<%@include file="/webpage/shop/common/foot.jsp"%>




<!-- BEGIN fast view of a product -->
<input type="hidden" id="cateId" value="<c:out value="${cateId}"></c:out>">
<input type="hidden" id="pageCount" value="<c:out value="${count}"></c:out>">

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
    var cateId= $('#cateId').val();
    var page_count=$('#pageCount').val() ;
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
            html+='<li class="list-group-item dropdown clearfix  "><a href="?cateid='+a[i].id+'" ><i class="fa fa-angle-right"></i>'+a[i].text+'</a>';
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
                        '        <a  target="_blank" href="<%=basePath%>'+this.image_location+'" class="btn btn-default fancybox-button">Zoom</a>'+
                        '        </div>'+
                        '        </div>'+
                        '       <h3><a  target="_blank" href="shop-item.html?id='+value.id+'">'+value.productName+'</a></h3>'+
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
                url: "/index/product.jspx",
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
                                '        <a  target="_blank" href="<%=basePath%>'+this.image_location+'" class="btn btn-default fancybox-button">Zoom</a>'+
                                '        </div>'+
                                '        </div>'+
                                '       <h3><a   target="_blank" href="shop-item.html?id='+value.id+'">'+value.productName+'</a></h3>'+
                                ' </div>'+
                                '</div>';
                        <!-- PRODUCT ITEM END -->


                      });

                      if( i%3==2){
                        str+= '</div> ';
                      }else if(i==length-1){
                        str+=' </div> ';
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

    Layout.init();
    Layout.initOWL();
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