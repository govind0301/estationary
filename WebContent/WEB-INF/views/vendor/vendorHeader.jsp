<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title>Website title - bootstrap alistyle html template</title>
<link href="./images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery-2.0.0.min.js" />" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />" type="text/javascript"></script>

<link href="<c:url value="/resources/css/bootstrap3661.css?v=2.0" />" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="./fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="<c:url value="/resources/css/ui3661.css?v=2.0" />"  rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css/responsive3661.css?v=2.0" />" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="<c:url value="/resources/js/script3661.js?v=2.0" />" type="text/javascript"></script>

</head>
<body>

<a href="http://bootstrap-ecommerce.com/templates.html" class="btn btn-dark rounded-pill" style="font-size:13px; z-index:100; position: fixed; bottom:10px; right:10px;">Download theme</a>

<header class="section-header">



<div class="container">
<section class="header-main border-bottom">
<div class="row row-sm">
	<div class="col-6 col-sm col-md col-lg  flex-grow-0">
		<a href="index.html" class="brand-wrap">
			<img class="logo" src="<c:url value="/resources/images/logo.svg" />">
		</a> <!-- brand-wrap.// -->
	</div>
	 <!-- col.// -->
	
</div> <!-- row.// -->
</section> <!-- header-main .// -->


<nav class="navbar navbar-main navbar-expand pl-0">
      <ul class="navbar-nav flex-wrap">
      	<li class="nav-item">
           <a class="nav-link" href="#">Home</a>
		</li>
        <li class="nav-item">
          <a class="nav-link" href="men.html">Pen</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="women.html">Pencil</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="kids.html">Notebook</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="display_product.html">Folder</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="sports.html">Books</a>
        </li>
      </ul>
	  <c:if test="${sessionScope.vendor_dtls == null}">
	  <ul class="navbar-nav ml-md-auto">
      	  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/vendor/login"></spring:url>">Login</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/vendor/registration"></spring:url>">Register</a>
          </li>
	   </ul>
	   </c:if>
	    <c:if test="${sessionScope.vendor_dtls != null}">
	   <ul class="navbar-nav ml-md-auto">
	   		<li class="nav-item">
            <a class="nav-link" href="<spring:url value="/vendor/accountDetails"></spring:url>">Welcome <strong>${sessionScope.vendor_dtls.title}</strong> </a>
         	</li>
      	  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/vendor/logout"></spring:url>">Logout</a>
          </li>
	   </ul>
	   </c:if>
</nav> <!-- navbar-main  .// -->

</div> <!-- container.// -->
</header> <!-- section-header.// -->
