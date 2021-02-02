<%@include file="header.jsp" %>
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
			<a class="list-group-item" href='<spring:url value="/customer/customerProduct"></spring:url>'> My Orders </a>
			<a class="list-group-item" href="<spring:url value="/customer/customerEdit"></spring:url>"> Update Details </a>
			<a class="list-group-item" href="<spring:url value="/customer/logout"></spring:url>"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">			
				<div class="col-md-12">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">FirstName</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.Customer_dtls.firstName}</strong>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">LastName</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.Customer_dtls.lastName}</strong>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${sessionScope.Customer_dtls.email}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.Customer_dtls.contactNumber}</strong>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <strong>${sessionScope.Customer_dtls.address}</strong>
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
<%@include file="footer.jsp" %>


