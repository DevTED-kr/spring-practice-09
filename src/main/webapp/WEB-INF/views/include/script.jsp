<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>

<script src="<c:url value="/resources/jqGrid/js/jquery-1.11.0.min.js"/>"></script>
<script src="<c:url value="/resources/jquery-ui-1.12.1.custom/jquery-ui.js"/>"></script>
<script src="<c:url value="/resources/jqGrid/js/i18n/grid.locale-en.js"/>"></script>
<script src="<c:url value="/resources/jqGrid/js/jquery.jqGrid.min.js"/>"></script>

