<%@include file="../header.jsp"%>
<hr> 

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content bg-white padding-y">
	<div class="container">
		<!-- ============================ ITEM DETAIL ======================== -->
		<div class="row">
			<aside class="col-md-6">
				<div class="card">
					<article class="gallery-wrap">
						<div class="img-big-wrap">
							<div>
								<a href="#"><img src="<c:url value="/resources/images/products/${productDetails.imageName}" />"/></a>
							</div>
						</div>
					</article>
					<!-- gallery-wrap .end// -->
				</div>
				<!-- card.// -->
			</aside>
			<main class="col-md-6">
				<article class="product-info-aside">
<c:if test="${requestScope.productDetails.category == null}">
	<h1>No Product available</h1>
</c:if>
					<h2 class="title mt-3">${productDetails.title}</h2>
					<br>
					<div class="mb-3">
						<var class="price h4">Rs. ${productDetails.unitPrice}</var>
						<span class="text-muted">per item</span>
					</div><div class="mb-3">
						<var class="price h6">In Stock. ${productDetails.stock}</var>
					</div>
					<!-- price-detail-wrap .// -->
					<p>${productDetails.description}</p>
					<div class="form-row  mt-4">
						<div class="form-group col-md">
							<a href='<spring:url value="/cart/add?pid=${productDetails.pId}"></spring:url>' class="btn  btn-primary">
								<i class="fas fa-shopping-cart"></i> <span class="text">Add	to cart</span>
							</a>

						</div>
						<!-- col.// -->
					</div>
					<!-- row.// -->

				</article>
				<!-- product-info-aside .// -->
			</main>
			<!-- col.// -->
		</div>
		<!-- row.// -->
	</div>
	<!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->





<%@include file="../footer.jsp"%>