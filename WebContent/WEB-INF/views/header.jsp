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

<title>My project</title>

<link href="./images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- Bootstrap4 files-->
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />" type="text/javascript"></script>

<link href="<c:url value="/resources/css/bootstrap3661.css?v=2.0" />" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="<c:url value="/resources/fonts/fontawesome/css/all.min.css" />" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="<c:url value="/resources/css/ui3661.css?v=2.0" />"  rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css/responsive3661.css?v=2.0" />" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="<c:url value="/resources/js/script3661.js?v=2.0" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/script.js" />" type="text/javascript"></script>
</head>
<body>


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
           <a class="nav-link" href="<spring:url value="/"></spring:url>">Home</a>
		</li>
        <li class="nav-item">
          <a class="nav-link" href='<spring:url value="/product/category?cat=PEN"></spring:url>'>Pen</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/product/category?cat=PENCIL"></spring:url>">Pencil</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/product/category?cat=NOTEBOOK"></spring:url>">NoteBook</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/product/category?cat=FOLDER"></spring:url>">Folders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<spring:url value="/product/category?cat=BOOK"></spring:url>">Books</a>
        </li>
      </ul>
	 <c:if test="${sessionScope.Customer_dtls == null}">
	  <ul class="navbar-nav ml-md-auto">
	  <li class="nav-item">
            <div class="icon-area" style="margin-top: 7px">
				<a href="<spring:url value="/product/cart"></spring:url>" ><i class="fa fa-shopping-cart"></i><span class="ml-0"></span></a>
			</div>
			
          </li>
      	  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/customer/login"></spring:url>">Login</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/customer/registration"></spring:url>">Register</a>
          </li>
	   </ul>
	   </c:if>
	    <c:if test="${sessionScope.Customer_dtls != null}">
	   <ul class="navbar-nav ml-md-auto">
	   <li class="nav-item">
            <div class="icon-area" style="margin-top: 7px">
				<a href="<spring:url value="/product/cart"></spring:url>"><i class="fa fa-shopping-cart"></i><span  class="ml-0"></span></a>
			</div>
			
          </li>
	   		<li class="nav-item">
            <a class="nav-link" href="<spring:url value="/customer/accountDetails"></spring:url>">Welcome <strong>${sessionScope.Customer_dtls.firstName}</strong> </a>
         	</li>
      	  <li class="nav-item">
            <a class="nav-link" href="<spring:url value="/customer/logout"></spring:url>">Logout</a>
          </li>
	   </ul>
	   </c:if>
</nav> <!-- navbar-main  .// -->

</div> <!-- container.// -->
</header> <!-- section-header.// -->
<%@include file="modal.jsp" %>