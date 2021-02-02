<%@ include file="vendorHeader.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

	<div class="card">
      <div class="card-body">
     
     <form:form action="/Estat/vendor/edit" method="POST"  modelAttribute="updateVendor">
     <input type="hidden" name="vendorId" value="${sessionScope.vendor_dtls.vendorId}"/>
     	<div class="col-md-9">
     		<div class="form-row">
				<div class="col-md-6 form-group">
					<label>Shop Name</label>
				  	<input type="text" name="title" class="form-control" value="${sessionScope.vendor_dtls.title}">
				</div> <!-- form-group end.// -->
				<div class="form-group col-md-6">
				  <label>email</label>
				  <input type="text" name="email" class="form-control" value="${sessionScope.vendor_dtls.email}">
				</div> <!-- form-group end.// -->
			</div> <!-- form-row.// -->

			<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Password</label>
				  <input type="password" name="password" class="form-control" value="${sessionScope.vendor_dtls.password}">
				</div> <!-- form-group end.// -->
				<div class="form-group col-md-6">
				  <label>Phone</label>
				  <input type="text" name="contactNumber" class="form-control" value="${sessionScope.vendor_dtls.contactNumber}">
				</div> <!-- form-group end.// -->
			</div> <!-- form-row.// -->
			<input type="submit" value="Save" class="btn btn-primary"/>
			<button class="btn btn-light">Change password</button>	

			<br><br><br><br><br><br>

     	</div> <!-- col.// -->
     	<!-- col.// -->
      </form:form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->




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