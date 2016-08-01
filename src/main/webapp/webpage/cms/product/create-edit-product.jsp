<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/17
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.7.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
  <%@include file="/webpage/cms/common/link-import.jsp"%>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-md page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<%@include file="/webpage/cms/common/head.jsp"%>
<!-- END HEADER -->
<div class="clearfix">
</div>
<div class="container">
  <!-- BEGIN CONTAINER -->
  <div class="page-container">
    <!-- BEGIN 侧边栏 -->
    <%@include file="/webpage/cms/common/sidebar.jsp"%>
    <!-- END 侧边栏 -->
    <!-- BEGIN 内容 -->
    <div class="page-content-wrapper">
      <div class="page-content">
        <!-- BEGIN 示例portlet配置模式窗体-->
        <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
              </div>
              <div class="modal-body">
                Widget settings form goes here
              </div>
              <div class="modal-footer">
                <button type="button" class="btn blue">Save changes</button>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

        <h3 class="page-title">
          产品编辑 <small>创建 & 编辑 产品</small>
        </h3>
        <div class="page-bar">
          <ul class="page-breadcrumb">
            <li>
              <i class="fa fa-home"></i>
              <a href="index.html">Home</a>
              <i class="fa fa-angle-right"></i>
            </li>
            <li>
              <a href="#">产品管理</a>
              <i class="fa fa-angle-right"></i>
            </li>
            <li>
              <a href="#">产品编辑</a>
            </li>
          </ul>

        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->

        <!-- END PAGE CONTENT-->


        <!-- BEGIN PAGE CONTENT-->

        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal form-row-seperated" action="/admin/cms/product/saveOrUpdate.do">
              <div class="portlet light">
                <div class="portlet-title">
                  <div class="caption">
                    <i class="icon-basket font-green-sharp"></i>
										<span class="caption-subject font-green-sharp bold uppercase">
										编辑产品 </span>
                    <span class="caption-helper">眼镜</span>
                  </div>
                  <div class="actions btn-set">
                    <button class="btn green-haze btn-circle"><i class="fa fa-check"></i> 保存</button>
                    <button  onclick="backPage();" type="button" name="back" class="btn btn-default btn-circle"><i class="fa fa-angle-left"></i> 返回</button>
                  </div>
                </div>
                <div class="portlet-body">
                  <div class="tabbable">
                    <ul class="nav nav-tabs">
                      <li class="active">
                        <a href="#tab_general" data-toggle="tab">
                          常规 </a>
                      </li>

                      <li>
                        <a href="#tab_images" data-toggle="tab">
                          图片 </a>
                      </li>


                    </ul>
                    <div class="tab-content no-space">
                      <div class="tab-pane active" id="tab_general">
                        <div class="form-body">
                          <div class="form-group">
                            <input type="hidden" name="productId" value="${product.id}">
                            <input type="hidden" name="deleteImages" id="deleteImages" value="" >
                            <label class="col-md-2 control-label">名称(英文): <span class="required">
														* </span>
                            </label>
                            <div class="col-md-10">
                              <input type="text" class="form-control" name="productName" placeholder=""  value="${product.productName}">
                              <span class="help-block">
															产品清单中展示 </span>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-2 control-label">描述(英文): <span class="required">
														* </span>
                            </label>
                            <div class="col-md-10">
                              <textarea class="form-control" name="productDes">${product.productDes}</textarea>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-2 control-label">简短描述(英文): <span class="required">
														* </span>
                            </label>
                            <div class="col-md-10">
                              <textarea class="form-control" name="productShortDes">${product.productShortDes}</textarea>

                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-md-2 control-label">所属类别: <span class="required">
														* </span>
                            </label>
                            <div class="col-md-10">
                              <div class="form-control height-auto">
                                <div class="scroller" style="height:200px;" data-always-visible="1">
                                  <ul class="list-unstyled">
                                    <c:forEach items="${categories}" var="item">

                                      <c:if test="${item.id != 1}">
                                      <li>
                                         <label><input  type="checkbox" name="pro_categories" value="${item.id}"
                                         <c:forEach items="${product.categories}"  var="cate">
                                                 <c:if test= "${item.id == cate.id}">
                                                        checked="false"
                                                  </c:if>
                                         </c:forEach>
                                                 >${item.categoryName}</label>
                                      </li>
                                      </c:if>

                                    </c:forEach>
                                    <%--<li>--%>
                                      <%--<label><input  type="checkbox" name="pro_categories" value="1"  checked="false">太阳镜</label>--%>
                                      <%--<ul class="list-unstyled">--%>
                                        <%--<li>--%>
                                          <%--<label><input  type="checkbox" name="pro_categories" value="2">男士太阳镜</label>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                          <%--<label><input type="checkbox" name="pro_categories" value="3">女生太阳镜</label>--%>
                                        <%--</li>--%>

                                      <%--</ul>--%>
                                    <%--</li>--%>
                                  </ul>
                                </div>
                              </div>
															<span class="help-block">
															选择一个或多个类别 </span>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="col-md-2 control-label">状态: <span class="required">
														* </span>
                            </label>
                            <div class="col-md-10">
                              <select class="table-group-action-input form-control input-medium" name="proStatus" >

                                <option value="P" <c:if test="${product.proStatus == 'P' }">selected</c:if> >展示</option>
                                <option value="U" value="P" <c:if test="${product.proStatus == 'U' }">selected</c:if> >不展示</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_images">
                        <div class="alert alert-success margin-bottom-10">
                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                          <i class="fa fa-warning fa-lg"></i> 图片上传成功后，在确认保存。
                        </div>
                        <div id="tab_images_uploader_container" class="text-align-reverse margin-bottom-10">
                          <a id="tab_images_uploader_pickfiles" href="javascript:" class="btn yellow">
                            <i class="fa fa-plus"></i> 选择文件 </a>
                          <a id="tab_images_uploader_uploadfiles" href="javascript:" class="btn green">
                            <i class="fa fa-share"></i> 上传文件 </a>
                        </div>
                        <div class="row">
                          <div id="tab_images_uploader_filelist" class="col-md-6 col-sm-12">
                          </div>
                        </div>
                        <table class="table table-bordered table-hover">
                          <thead>
                          <tr role="row" class="heading">
                            <th width="8%">
                              图像
                            </th>
                            <th width="25%">
                              标签
                            </th>
                            <th width="8%">
                              排序顺序
                            </th>
                            <th width="10%">
                              基本图像
                            </th>
                            <th width="10%">
                              小图像
                            </th>
                            <th width="10%">
                              缩略图
                            </th>
                            <th width="10%">
                            </th>
                          </tr>
                          </thead>
                          <tbody id="image-table">
                          <c:forEach items="${imageInfos}" var="item">
                            <td>
                             <a href="${item.image_location}" class="fancybox-button" data-rel="fancybox-button">
                             <img class="img-responsive" src="${item.image_location}" alt="">
                              <input type="hidden" class="form-control" id="id" name="imageInfos[${item.id}].id" value="${item.id}">
                               </a>
                               </td>
                               <td>
                               <input type="text" class="form-control" name="imageInfos[${item.id}].imageName" value="${item.imageName}">
                               </td>
                               <td>
                               <input type="text" class="form-control" name="imageInfos[${item.id}].imageSort" value="${item.imageSort}">
                               </td>
                               <td>
                                <label>
                                 <input type="radio" name="imageInfos[${item.id}].imageType" value="1"  <c:if test="${item.imageType == '1' }">checked="checked"</c:if>  >
                               </label>
                             </td>
                             <td>
                             <label>
                               <input type="radio" name="imageInfos[${item.id}].imageType" value="2" <c:if test="${item.imageType == '2' }">checked="checked"</c:if> >
                                </label>
                               </td>
                               <td>
                               <label>
                                 <input type="radio" name="imageInfos[${item.id}].imageType" value="3" <c:if test="${item.imageType == '3' }">checked="checked"</c:if> >
                                 </label>
                               </td>
                               <td>
                               <a href="javascript:" onclick="deleteTr(this)" class="btn default btn-sm">
                                 <i class="fa fa-times"></i> 移除 </a>
                             </td>
                              </tr>


                          </c:forEach>


                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>

        <!-- END PAGE CONTENT-->

        <!-- END PAGE CONTENT -->
      </div>
    </div>
  </div>
  <!-- END CONTENT -->

</div>
</div>
<!-- END CONTENT -->
<!-- BEGIN QUICK SIDEBAR -->
<!--Cooming Soon...-->
<!-- END QUICK SIDEBAR -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<%@include file="/webpage/cms/common/foot.jsp"%>
<!-- END FOOTER -->
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<%@include file="/webpage/cms/common/script-import.jsp"%>

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>

<script src="<%=basePath%>/assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="<%=basePath%>/assets/global/plugins/plupload/js/plupload.full.min.js" type="text/javascript"></script>

<script src="<%=basePath%>/assets/global/scripts/datatable.js"></script>
<script src="<%=basePath%>/assets/admin/pages/scripts/ecommerce-products-edit.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
  jQuery(document).ready(function() {
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    Demo.init(); // init demo features
    EcommerceProductsEdit.init();
  });

  function backPage() {

    window.location.href="/admin/cms/product/page.do";
  }

  function deleteTr(nowTr){
    var deleteImages= $("#deleteImages").val();
    deleteImages += $(nowTr).closest("tr").find("input[id='id']").val()+',';
    $("#deleteImages").val(deleteImages);


    $(nowTr).parent().parent().remove();
  }

</script>

<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>