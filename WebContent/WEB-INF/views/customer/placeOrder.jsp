<%@include file="../header.jsp"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg-gray">
<div class="container">
	<h2 class="title-page">My account</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	
	<main class="col-md-12">
	<article class="card mb-4">
		<header class="card-header">
			<a href="#" class="float-right"> <i class="fa fa-print"></i> Print</a>
			<strong class="d-inline-block mr-3">Order ID: 6123456789</strong>
			<%
  			 Date date = new Date();
   			out.print( "<span>Date:" +date.toString()+"</span>");
%>
		</header>
		<div class="card-body">
			<div class="row"> 
				<div class="col-md-8">
					<h6 class="text-muted">Delivery to</h6>
					<p>${sessionScope.Customer_dtls.firstName}<br>  
					Phone ${sessionScope.Customer_dtls.contactNumber} Email: ${sessionScope.Customer_dtls.email} <br>
			    	Location:${sessionScope.Customer_dtls.address} <br> 
			    	P.O. Box: ${sessionScope.Customer_dtls.pincode}
			 		</p>
				</div>
				<div class="col-md-4">
					<h6 class="text-muted">Payment</h6>
					<span class="text-success">
						<i class="fab fa-lg fa-cc-visa"></i>
					    Cash On Delivery
					</span>
					</p>
				</div>
			</div> <!-- row.// -->
		</div> <!-- card-body .// -->
		<div class="table-responsive">
		<table class="table table-hover">
			<tbody><tr>
			<c:set var="Total" value="${0}" />
			<c:forEach items="${sessionScope.cart}" var="product">
			<c:set var="Total" value="${Total + product.unitPrice}" />
				<td width="65">
					<img src="<c:url value="/resources/images/products/${product.imageName}" />" class="img-xs border">
				</td>
				<td> 
					<p class="title mb-0">${product.title} </p>
					<var class="price text-muted">${product.unitPrice}</var>
				</td>
				<td width="250">${product.unitPrice}</td>
			</tr>
			</c:forEach>
		</tbody></table>
		<hr>
		<p class="float-right" style="padding-right: 107px;margin-bottom: 20px;"><strong>Total Order: ${Total}</strong></p>
		</div> <!-- table-responsive .end// -->
		</article> <!-- card order-item .// -->
	
	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<%@include file="../footer.jsp" %>