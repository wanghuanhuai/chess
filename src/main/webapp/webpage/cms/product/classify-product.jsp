<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/21
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

  <link rel="stylesheet" type="text/css" href="<%=basePath%>/assets/global/plugins/jstree/dist/themes/default/style.min.css"/>

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
<%@include file="/webpage/cms/common/head.jsp"%><!-- END HEADER -->
<div class="clearfix">
</div>
<div class="container">
  <!-- BEGIN CONTAINER -->
  <div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <%@include file="/webpage/cms/common/sidebar.jsp"%>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
      <div class="page-content">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
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
        <!-- /.modal -->
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <!-- BEGIN STYLE CUSTOMIZER -->
        <!-- END STYLE CUSTOMIZER -->
        <!-- BEGIN PAGE HEADER-->
        <h3 class="page-title">
          产品管理 <small>分类操作</small>
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
              <a href="#">产品分类</a>
            </li>
          </ul>
          <div class="page-toolbar">
            <div class="btn-group pull-right">
              <button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
                Actions <i class="fa fa-angle-down"></i>
              </button>
              <ul class="dropdown-menu pull-right" role="menu">
                <li>
                  <a href="#">Action</a>
                </li>
                <li>
                  <a href="#">Another action</a>
                </li>
                <li>
                  <a href="#">Something else here</a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="#">Separated link</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->

        <!-- END PAGE CONTENT-->
        <div class="row">
          <div class="col-md-10">
            <div class="portlet yellow-lemon box">
              <div class="portlet-title">
                <div class="caption">
                  <i class="fa fa-cogs"></i>菜单
                </div>
                <div class="tools">
                  <button type="button" class="btn btn-success btn-sm" onclick="demo_create();"><i class="glyphicon glyphicon-asterisk"></i> 新建</button>
                  <button type="button" class="btn btn-success btn-sm" onclick="demo_rename();"><i class="glyphicon glyphicon-pencil"></i> 重命名</button>
                  <button type="button" class="btn btn-danger btn-sm" onclick="demo_delete();"><i class="glyphicon glyphicon-remove"></i> 删除</button>
                </div>
              </div>
              <div class="portlet-body">
                <div id="tree_3" class="tree-demo">
                </div>
                <div class="alert alert-success no-margin margin-top-10">
                  Note! Opened and selected nodes will be saved in the user's browser, so when returning to the same tree the previous state will be restored.
                </div>
              </div>
            </div>
          </div>
        </div>
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
<%@include file="/webpage/cms/common/script-import.jsp"%>

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>/assets/global/plugins/jstree/dist/jstree.min.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>/assets/admin/pages/scripts/ui-tree.js"></script>
<script src="<%=basePath%>/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="<%=basePath%>/assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->


<script>

  jQuery(document).ready(function() {
    // initiate layout and plugins
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    Demo.init(); // init demo features
    UITree.init();

  });

  function demo_create() {
    var ref = $('#tree_3').jstree(true),
    sel = ref.get_selected();
    if(!sel.length) {
      alert('请选择上级类别！');
      return false;
    }
    sel = sel[0];
    sel = ref.create_node(sel, {"type":"text"});
    if(sel) {
      ref.edit(sel);
    }
  }
  function demo_rename() {
    var ref = $('#tree_3').jstree(true),
            sel = ref.get_selected();
    if(ref.get_node(sel).parent == '#'){
      alert('根目录无法重命名!');
      return ;
    }
    if(!sel.length) {
      alert('请选择类别！');
      return false;
    }
    sel = sel[0];
    ref.edit(sel);
  }
  function demo_delete() {
    var ref = $('#tree_3').jstree(true),
            sel = ref.get_selected();

    if(ref.get_node(sel).parent == '#'){
      alert('根目录无法删除!');
      return ;
    }
    if(!sel.length) {
      alert('请选择类别！');
      return false;
    }
    if (confirm("确定删除此行 ?") == true) {
      ref.delete_node(sel);
    }

  }

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>