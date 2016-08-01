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
    <div id="myDiv">
        <!-- BEGIN PAGE HEADER-->
        <h3 class="page-title">
          产品管理 <small>产品列表</small>
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
              <a href="#">产品列表</a>
            </li>
          </ul>

        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->

        <!-- END PAGE CONTENT-->
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
          <div class="col-md-12">
            <!-- BEGIN EXAMPLE TABLE PORTLET-->
            <div class="portlet box blue">
              <div class="portlet-title">
                <div class="caption">
                  <i class="fa fa-edit"></i>产品列表
                </div>
                <div class="tools">
                  <a href="javascript:" class="collapse">
                  </a>
                  <a href="#portlet-config" data-toggle="modal" class="config">
                  </a>
                  <a href="javascript:" class="reload">
                  </a>
                  <a href="javascript:" class="remove">
                  </a>
                </div>
              </div>
              <div class="portlet-body">
                <div class="table-toolbar">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="btn-group">
                        <button id="sample_editable_1_new" class="btn green">
                          添加新产品 <i class="fa fa-plus"></i>
                        </button>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="btn-group pull-right">
                        <button class="btn dropdown-toggle" data-toggle="dropdown">工具 <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right">
                          <li>
                            <a href="javascript:">
                             导出Excel</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                  <thead>
                  <tr>
                    <th>
                      ID
                    </th>
                    <th>
                      产品名称
                    </th>
                    <th>
                      类别
                    </th>
                    <th>
                      创建日期
                    </th>
                    <th>
                      状态
                    </th>
                    <th>
                      编辑
                    </th>
                    <th>
                      删除
                    </th>
                  </tr>
                  </thead>
                  <tbody>

           <c:forEach items="${products}" var="item">

                    <tr>
                      <td class="id">
                          ${item.id}
                      </td>
                      <td>
                          ${item.productName}
                      </td>
                      <td>
           <c:forEach items="${item.categories}" var="cate">
              ${cate.categoryName}
           </c:forEach>
                      </td>
                      <td>
                        ${item.createDate}
                      </td>
                      <td class="center">
                          <c:if test="${item.proStatus =='P'}">
                                展示
                          </c:if>
                          <c:if test="${item.proStatus =='U'}">
                              不展示
                          </c:if>

                      </td>
                      <td>
                        <a class="edit" href="/admin/cms/product/create.do?id= ${item.id}">
                          编辑 </a>
                      </td>
                      <td>
                        <a class="delete" href="javascript:">
                          删除 </a>
                      </td>
                    </tr>
           </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- END EXAMPLE TABLE PORTLET-->
          </div>
        </div>
        <!-- END PAGE CONTENT -->
      </div>
    </div>
    </div>
    <!-- END CONTENT -->
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
<script src="<%=basePath%>/assets/global/scripts/datatable.js"></script>
<script src="<%=basePath%>/assets/admin/pages/scripts/table-editable.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        TableEditable.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
