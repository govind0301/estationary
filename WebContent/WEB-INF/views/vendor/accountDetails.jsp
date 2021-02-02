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
			<!-- <a class="list-group-item" href="<spring:url value="/vendor/order?vid=${sessionScope.vendor_dtls.vendorId}"></spring:url>"> orders Product </a>-->
			<a class="list-group-item" href="<spring:url value="/vendor/vendorEdit"></spring:url>"> Settings </a>
			<a class="list-group-item" href="<spring:url value="/vendor/logout"></spring:url>"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">			
				<div class="col-md-12">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Shop Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.vendor_dtls.title}</strong>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${sessionScope.vendor_dtls.email}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.vendor_dtls.contactNumber}</strong>
                    </div>
                  </div>
				  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <button class="btn btn-primary">Update Profile</button>
                    </div>
                  </div>
                 
                </div>
              </div>

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