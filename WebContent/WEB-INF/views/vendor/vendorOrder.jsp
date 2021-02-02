<%@ include file="vendorHeader.jsp" %>
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
	<aside class="col-md-3">
		<nav class="list-group">
			<a class="list-group-item active" href="<spring:url value="/vendor/accountDetails"></spring:url>"> Account overview  </a>
			<a class="list-group-item" href='<spring:url value="/vendor/vendorProduct"></spring:url>'> My Selling Items </a>
			<a class="list-group-item" href="<spring:url value="/product/add"></spring:url>"> Add Product </a>
			<a class="list-group-item" href="<spring:url value="/vendor/order?vid=${sessionScope.vendor_dtls.vendorId}"></spring:url>"> orders Product </a>
			<a class="list-group-item" href="<spring:url value="/vendor/vendorEdit"></spring:url>"> Settings </a>
			<a class="list-group-item" href="<spring:url value="/vendor/logout"></spring:url>"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
<main class="col-md-9">
	<article class="card mb-4">
		<div class="card-body">
			<div class="row"> 
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
			<th>
			<td>Product Name</td>
			<td>Product Qunatity</td>
			</th>
			</tr>
			<tr>
			<c:set var="Total" value="${0}" />
			<c:forEach items="${requestScope.vendor_prod}" var="orders">
				<td> 
					<p class="title mb-0">${orders.title} </p>
					<var class="price text-muted">${orders.unitPrice}</var>
				</td>
				<td> 
					<p class="title mb-0">1</p>
				</td>
			</tr>
			</c:forEach>
		</tbody></table>
		</div> <!-- table-responsive .end// -->
		</article> <!-- card order-item .// -->
	
	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= FOOTER ========================= -->
<footer class="section-footer bg-secondary text-white">
	<div class="container">
		
		<section class="footer-bottom text-center">
			<p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
			<p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
			<br>
	</section>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->

</body>
</html>