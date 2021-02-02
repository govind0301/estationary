<%@include file="../header.jsp"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
			<a class="list-group-item active" href="<spring:url value="/customer/accountDetails"></spring:url>"> Account overview  </a>
			<a class="list-group-item" href="<spring:url value="/vendor/vendorProduct"></spring:url>"> My Orders </a>
			<a class="list-group-item" href="<spring:url value="/customer/customerEdit"></spring:url>"> Update Profile </a>
			<a class="list-group-item" href="<spring:url value="/customer/logout"></spring:url>"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

	<div class="card">
      <div class="card-body">
     
     <form:form action="/Estat/customer/edit" method="POST"  modelAttribute="updateCustomer">
     <input type="hidden" name="customerId" value="${sessionScope.Customer_dtls.customerId}"/>
     	<div class="col-md-9">
     		<div class="form-row">
				<div class="col-md-6 form-group">
					<label>FirstName</label>
				  	<input type="text" name="firstName" class="form-control" value="${sessionScope.Customer_dtls.firstName}">
				</div> <!-- form-group end.// -->
				<div class="form-group col-md-6">
				  <label>LastName</label>
				  <input type="text" name="lastName" class="form-control" value="${sessionScope.Customer_dtls.lastName}">
				</div> <!-- form-group end.// -->
			</div> <!-- form-row.// -->

			<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Email</label>
				  <input type="email" name="email" class="form-control" value="${sessionScope.Customer_dtls.email}">
				</div> <!-- form-group end.// -->
				<div class="form-group col-md-6">
				  <label>Phone</label>
				  <input type="text" name="contactNumber" class="form-control" value="${sessionScope.Customer_dtls.contactNumber}">
				</div> <!-- form-group end.// -->
			</div> <!-- form-row.// -->
			<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Address</label>
				  <input type="text" name="address" class="form-control" value="${sessionScope.Customer_dtls.address}">
				</div> <!-- form-group end.// -->
				<div class="form-group col-md-6">
				  <label>Pincode</label>
				  <input type="text" name="pincode" class="form-control" value="${sessionScope.Customer_dtls.pincode}">
				</div> <!-- form-group end.// -->
			</div> <!-- form-row.// -->
			<div class="form-group col-md-6">
				  <label>Password</label>
				  <input type="password" name="password" class="form-control" value="${sessionScope.Customer_dtls.password}">
				</div> <!-- form-group end.// -->
				
			</div> <!-- form-row.// -->
			<input type="submit" value="Save" class="btn btn-primary"/>


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

<%@include file="../footer.jsp" %>