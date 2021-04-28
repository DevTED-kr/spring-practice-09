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
<!-- REQUIRED SCRIPTS -->
  <%@include file="../include/script.jsp" %>
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
		            <h3 class="box-title">list</h3>
		        </div>
		        <div class="box-body">
		            <table class="table table-bordered">
		                <tbody>
		                <tr>
		                    <th style="width: 30px">#</th>
		                    <th>title</th>
		                    <th style="width: 200px">writer</th>
		                    <th style="width: 150px">time</th>
		                    <th style="width: 60px">search</th>
		                </tr>
		                <c:forEach items="${articles}" var="article">
		                <tr>
		                    <td>${article.articleNO}</td>
		                    <td><a href="${path}/article/read?articleNO=${article.articleNO}">${article.title}</a></td>
		                    <td>${article.writer}</td>
		                    <td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/></td>
		                    <td><span class="badge bg-red">${article.viewCnt}</span></td>
		                </tr>
		                </c:forEach>
		                </tbody>
		            </table>
		        </div>
		        <div class="box-footer">
		            <div class="pull-right">
		                <button type="button" class="btn btn-success btn-flat" id="writeBtn">
		                    <i class="fa fa-pencil"></i> write
		                </button>
		            </div>
		        </div>
		        
		    </div>
		</div>
     <script type="text/javascript">
	      var result = "${msg}";
			if (result == "regSuccess") {
			    alert("Success");
			} else if (result == "modSuccess") {
			    alert("Modify Success");
			} else if (result == "delSuccess") {
			    alert("Delete Success");
			}
	</script>
      
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

</body>
</html>
