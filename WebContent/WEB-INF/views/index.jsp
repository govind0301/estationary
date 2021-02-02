
<%@include file="header.jsp" %>
<!-- ========================= SECTION MAIN  ========================= -->
<section class="section-intro padding-y">
<div class="container">
<!-- ==============  COMPONENT SLIDER  BOOTSTRAP ============  -->
<div id="carousel1_indicator" class="slider-home-banner carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel1_indicator" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1_indicator" data-slide-to="1"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://shop4books.co.in/images/001_22062020.jpg" style="height:420px;" alt="First slide"> 
    </div>
    <div class="carousel-item">
      <img src="https://www.kokuyocamlin.com/images/making-learning-fun.jpg" style="height:420px;" alt="Second slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<!-- ============ COMPONENT SLIDER BOOTSTRAP end.// ===========  .// -->	
	
</div> <!-- container end.// -->
</section>
<!-- ========================= SECTION MAIN END// ========================= -->


<div class="container">

<!-- =============== SECTION 1 =============== -->
<section class="padding-bottom">
<header class="section-heading mb-4">
	<h3 class="title-section">Recommended items</h3>
</header>

<div class="row">
<c:forEach items="${requestScope.allProducts }" var="product">
	<div class="col-xl-3 col-lg-3 col-md-4 col-6">
		<div class="card card-product-grid">
			<a href="#" class="img-wrap"> <img src="<c:url value="/resources/images/products/${product.imageName}" />"> </a>
			<figcaption class="info-wrap">
                <ul class="rating-stars mb-1">
                	<li style="width:80%" class="stars-active">
						<img src="./images/icons/stars-active.svg" alt="">
						
					</li>
					<li>
						<img src="images/icons/starts-disable.svg" alt="">
					</li>
				</ul>
				<div>
					<a href="#" class="text-muted">${product.category}</a>
                	<a href="#" class="title">${product.title}</a>
				</div>
				<div class="price h5 mt-2">${product.unitPrice}</div> <!-- price.// -->
				<a href="<spring:url value="/product/productDetails?pid=${product.pId}"></spring:url>" class="btn btn-outline-primary " style="margin-top:10px;"> View Product </a>	
			</figcaption>
		</div>
	</div> <!-- col.// -->
	</c:forEach>
</div> <!-- row.// -->
</section>
<!-- =============== SECTION 1 END =============== -->




	
<!-- =============== SECTION 2 =============== -->

<!-- =============== SECTION 2 END =============== -->



</div>  
<!-- container end.// -->

<%@include file="footer.jsp"%>