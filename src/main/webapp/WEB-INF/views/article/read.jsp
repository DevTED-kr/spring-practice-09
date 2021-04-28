<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and pr./ovides the needed markup only.
-->
<html lang="en">
<%@include file="../include/meta.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@include file="../include/navbar.jsp" %>
<!-- /.navbar -->

  <!-- Main Sidebar Container -->
	<%@include file="../include/sidebar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">MAIN Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Main Page</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
      	<div class="col-lg-12">
		    <div class="box box-primary">
		        <div class="box-header with-border">
		            <h3 class="box-title">title : ${article.title}</h3>
		        </div>
		        <div class="box-body" style="height: 700px">
		            ${article.content}
		        </div>
		        <div class="box-footer">
		            <div class="user-block">
		                <img class="img-circle img-bordered-sm" src="/dist/img/user1-128x128.jpg" alt="user image">
		                <span class="username">
		                    <a href="#">${article.writer}</a>
		                </span>
		                <span class="description"><fmt:formatDate pattern="yyyy-MM-dd a HH:mm" value="${article.regDate}"/></span>
		            </div>
		        </div>
		        <div class="box-footer">
		            <form role="form" method="post">
		                <input type="hidden" name="articleNo" value="${article.articleNO}">
		            </form>
		            <button type="submit" class="btn btn-primary listBtn"><i class="fa fa-list"></i> list</button>
		            <div class="pull-right">
		                <button type="submit" class="btn btn-warning modBtn"><i class="fa fa-edit"></i> Modify</button>
		                <button type="submit" class="btn btn-danger delBtn"><i class="fa fa-trash"></i> Delete</button>
		            </div>
		        </div>
		    </div>
		</div>
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <%@include file="../include/footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
  <%@include file="../include/script.jsp" %>
</body>
</html>
