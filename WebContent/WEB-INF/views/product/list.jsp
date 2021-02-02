<%@include file="../header.jsp"%>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">
<div class="row">
<c:forEach items="${requestScope.categoryProduct}" var="products">
	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="<c:url value="/resources/images/products/${products.imageName}" />"> 
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">${products.title }</a>
					<div class="price-wrap">
						<span class="price">${products.unitPrice }</span> 
						<small class="text-muted">/per item</small>
					</div> <!-- price-wrap.// -->
					<a href="<spring:url value="/product/productDetails?pid=${products.pId}"></spring:url>" class="btn btn-outline-primary " style="margin-top:10px;"> View Product </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->
</c:forEach>
</div> <!-- row end.// -->
</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->




<!-- ========================= SECTION SUBSCRIBE END// ========================= -->

<%@ include file="../footer.jsp"%>