<%--
  Created by IntelliJ IDEA.
  User: fi25
  Date: 2016/6/17
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-sidebar-wrapper">
  <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
  <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
  <div class="page-sidebar navbar-collapse collapse">
    <!-- BEGIN SIDEBAR MENU -->
    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" id="page-sidebar-menu">
 <%--     <li class="start active ">
        <a href="index.html">
          <i class="icon-home"></i>
          <span class="title">首页</span>
        </a>
      </li>
      <li >
        <a href="javascript:;">
          <i class="icon-basket"></i>
          <span class="title">产品管理</span>
          <span class="selected"></span>
        </a>
        <ul class="sub-menu">
          <li >
            <a href="page.do">
              <i class="icon-handbag"></i>
              产品列表</a>
          </li>
          <li>
          <li class="active">
            <a href="create.do">
              <i class="icon-pencil"></i>
              产品编辑</a>
          </li>
        </ul>
      </li>--%>
<!--首页-->
      <li >
        <a href="page.do">
          <i class="icon-home"></i>
          <span class="title">首页</span>
          <span class="selected"></span>
        </a>
      </li>
<!--用户管理-->
   <li>
     <a href="/admin/cms/shopUser/page.do">
       <i class="icon-user"></i>
       <span class="title">用户管理</span>
       <span class="selected"></span>
     </a>

     <ul class="sub-menu">
       <li >
         <a href="/admin/cms/shopUser/listPage.do">
           <i class="icon-handbag"></i>
           <span class="badge badge-roundless badge-danger">查询</span>
           前台用户列表
         </a>
       </li>
       <li>
         <a href="/admin/cms/shopUser/create.do">
           <i class="icon-user-following"></i><span class="badge badge-success badge-roundless">添加</span>
           添加用户</a>
       </li>
       <li>
     </ul>
   </li>

   <!--产品管理-->
      <li>
        <a href="/admin/cms/product/page.do">
          <i class="icon-basket"></i>
          <span class="title">产品管理</span>
          <span class="selected"></span>
        </a>
        <ul class="sub-menu">
          <li >
            <a href="/admin/cms/product/classify.do">
              <i class="icon-handbag"></i>
              <span class="badge badge-roundless badge-success">分类</span>
              产品分类
            </a>
          </li>
          <li >
            <a href="/admin/cms/product/page.do">
              <i class="icon-handbag"></i>
              <span class="badge badge-roundless badge-danger">查询</span>
              产品列表
            </a>
          </li>
          <li>
            <a href="/admin/cms/product/create.do">
              <i class="icon-pencil"></i>
              新建产品</a>
          </li>
          <li>
        </ul>
      </li>
    </ul>
    </li>

    </ul>
    <!-- END SIDEBAR MENU -->
  </div>
</div>

