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
            用户管理 <small>前台用户</small>
          </h3>
          <div class="page-bar">
            <ul class="page-breadcrumb">
              <li>
                <i class="fa fa-home"></i>
                <a href="#">Home</a>
                <i class="fa fa-angle-right"></i>
              </li>
              <li>
                <a href="#">用户管理</a>
                <i class="fa fa-angle-right"></i>
              </li>
              <li>
                <a href="#">用户列表</a>
              </li>
            </ul>

          </div>
          <!-- END PAGE HEADER-->
          <!-- BEGIN PAGE CONTENT-->

          <!-- END PAGE CONTENT-->
          <!-- BEGIN PAGE CONTENT-->
          <div class="row">
            <div class="col-md-12">
              <!-- BEGIN VALIDATION STATES-->
              <div class="portlet box purple">
                <div class="portlet-title">
                  <div class="caption">
                    <i class="fa fa-gift"></i>用户信息编辑
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
                <div class="portlet-body form">
                  <!-- BEGIN FORM-->
                  <form action="/admin/cms/shopUser/update.do" id="form_sample_1" class="form-horizontal">
                    <div class="form-body">
                      <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        你有一些表格的错误。请检查下面。
                      </div>
                      <div class="alert alert-success display-hide">
                        <button class="close" data-close="alert"></button>
                        用户修改成功.
                      </div>
                      <input type="hidden" class="form-control" name="id"  value="${shopUser.id}"/>
                      <div class="form-group">
                        <label class="control-label col-md-3">用户名 <span class="required">
											 *</span>
                        </label>
                        <div class="col-md-4">
                          <input type="text" name="loginName" data-required="1" class="form-control" value="${shopUser.loginName}" disabled="disabled"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3">密码 <span class="required">
														* </span>
                        </label>
                        <div class="col-md-4">
                          <input type="text" class="form-control" name="password" id="submit_form_password" value="${shopUser.password}"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3">Email <span class="required">
											* </span>
                        </label>
                        <div class="col-md-4">
                          <input name="email" type="text" class="form-control" value="${shopUser.email}" disabled="disabled"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3">客户名称 <span class="required">
														* </span>
                        </label>
                        <div class="col-md-4">
                          <input type="text" class="form-control" name="fullname" value="${shopUser.fullname}"/>
															<span class="help-block">
															请填写客户名称 </span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3">客户地址 <span class="required">
														* </span>
                        </label>
                        <div class="col-md-4">
                          <input type="text" class="form-control" name="address" value="${shopUser.address}"/>
															<span class="help-block">
															请填写详细地址 </span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3">备注</label>
                        <div class="col-md-4">
                          <textarea class="form-control" rows="3" name="remarks">${shopUser.remarks}</textarea>
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-md-3">激活状态 <span class="required">
											* </span>
                      </label>
                      <div class="col-md-4">
                        <select class="form-control" name="isActive">
                          <option value="Y"  <c:if test="${shopUser.isActive == 'Y' }">selected</c:if> >已激活</option>
                          <option value="N"  <c:if test="${shopUser.isActive != 'Y' }">selected</c:if> >未激活</option>
                        </select>
                      </div>
                    </div>

                    <div class="form-actions">
                      <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                          <button type="submit" class="btn green">提交</button>
                          <button type="button" class="btn default" id="cancel-btn">取消</button>
                        </div>
                      </div>
                    </div>
                  </form>
                  <!-- END FORM-->
                </div>
              </div>
              <!-- END VALIDATION STATES-->
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
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script type="text/javascript" src="<%=basePath%>/assets/global/plugins/bootstrap-markdown/lib/markdown.js"></script>

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>//assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=basePath%>//assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=basePath%>//assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<script src="<%=basePath%>//assets/admin/pages/scripts/form-validation.js"></script>


<!-- END PAGE LEVEL SCRIPTS -->
<script>
  jQuery(document).ready(function() {
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    Demo.init(); // init demo features
    FormValidation.init();


  });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
