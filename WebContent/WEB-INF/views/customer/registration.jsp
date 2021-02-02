<%@include file="../header.jsp"%>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Customer Sign up</h4></header>
		<form action="<spring:url value="/customer/registration"></spring:url>" method="post">
				<div class="form-row">
					<div class="col form-group">
						<label>First name</label>
					  	<input type="text" class="form-control" name="firstName" placeholder="Firstname" required>
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>Last name</label>
					  	<input type="text" class="form-control" name="lastName" placeholder="Lastname" required>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" placeholder="Email" required>
					<small class="form-text text-muted">We'll never share your email with anyone else.</small>
				</div> <!-- form-group end.// -->
				<div class="form-row">
					<div class="form-group col-md-6">
					  <label>Address</label>
					  <input type="text" class="form-control" name="address" required>
					</div> <!-- form-group end.// -->
					<div class="form-group col-md-6">
					  <label>Pin Code</label>
					  <input type="text" class="form-control" name="pincode" required>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row.// -->
				<div class="form-row">
					<div class="form-group  col-md-12">
						<label>Create password</label>
					    <input class="form-control" type="password" name="password" required>
					</div> <!-- form-group end.// --> 
					<!-- form-group end.// -->  
				</div>
				<div class="form-row">
					<div class="col form-group">
						<label>Contact number</label>
					  	<input type="text" class="form-control" name="contactNumber" placeholder="Contact Number" required>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
			    <div class="form-group">
			        <input type="submit" class="btn btn-primary btn-block" value="Register">
			    </div> <!-- form-group// -->             
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <p class="text-center mt-4">Have an account? <a href="<spring:url value="/customer/login"></spring:url>">Log In</a></p>
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->
<%@include file="../footer.jsp"%>