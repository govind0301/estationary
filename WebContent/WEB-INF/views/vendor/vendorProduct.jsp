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
			<a class="list-group-item" href="<spring:url value="/vendor/vendorProduct"></spring:url>"> My Selling Items </a>
			<a class="list-group-item" href="<spring:url value="/product/add"></spring:url>"> Add Product </a>
			<a class="list-group-item" href="<spring:url value="/vendor/vendorEdit"></spring:url>"> Settings </a>
			<a class="list-group-item" href="<spring:url value="/vendor/logout"></spring:url>"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

	<article class="card">
			<div class="card-body">

		<div class="row">
		<c:forEach items="${sessionScope.vendor_dtls.products}" var="product">
				<div class="col-md-4">
					<figure class="card card-product-grid">
						<div class="img-wrap"> 
							<img src="<c:url value="/resources/images/products/${product.imageName}" />">
						</div> <!-- img-wrap.// -->
						<figcaption class="info-wrap">
								<a href="#" class="title mb-2">${product.title }</a>
								<div class="price-wrap mb-3">
									<span class="price">Rs. ${product.unitPrice }</span> 
									<small class="text-muted">/per item</small>
								</div> <!-- price-wrap.// -->
								<div class="price-wrap mb-3">
									<span class="price">In Stock: ${product.stock } products</span> 
								</div> <!-- price-wrap.// -->
								<a href='<spring:url value="/product/productEdit?pid=${product.pId}"></spring:url>' class="btn btn-outline-primary"> <i class="fa fa-pen"></i> Edit </a>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
				</c:forEach>

				

			</div> <!-- row .//  -->

			</div> <!-- card-body.// -->
		</article>


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

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-setting.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Sep 2020 16:10:28 GMT -->
</html>