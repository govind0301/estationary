<%@ include file="../vendor/vendorHeader.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


	<!-- ========================= SECTION PAGETOP ========================= -->
	<section class="section-pagetop bg-gray">
		<div class="container">
			<h2 class="title-page">Add Product</h2>
		</div>
		<!-- container //  -->
	</section>
	<!-- ========================= SECTION PAGETOP END// ========================= -->

	<!-- ========================= SECTION CONTENT ========================= -->
	<section class="section-content padding-y">
		<div class="container">

			<div class="row">
				<aside class="col-md-3">
					<nav class="list-group">
						<a class="list-group-item active"
							href="<spring:url value="/vendor/accountDetails"></spring:url>">
							Account overview </a> <a class="list-group-item"
							href='<spring:url value="/vendor/vendorProduct"></spring:url>'>
							My Selling Items </a> <a class="list-group-item"
							href="<spring:url value="/product/add"></spring:url>"> Add
							Product </a> <a class="list-group-item"
							href="<spring:url value="/vendor/vendorEdit"></spring:url>">
							Settings </a> <a class="list-group-item"
							href="<spring:url value="/vendor/logout"></spring:url>"> Log
							out </a>
					</nav>
				</aside>
				<!-- col.// -->
				<main class="col-md-9">

					<div class="card">
						<div class="card-body">
							<form:form class="form-horizontal" role="form" method="post"  
								action="/Estat/product/add1" enctype="multipart/form-data">
								<h2>Registration</h2>
								<input type="hidden" name="vendor_id"
									value="${sessionScope.vendor_dtls.vendorId}" />
								<div class="form-group">
									<label for="title" class="col-sm-3 control-label">Title</label>
									<div class="col-sm-9">
										<input type="text" id="title" placeholder="product title"
											name="title" class="form-control" autofocus>
									</div>
								</div>
								<div class="form-group">
									<label for="lastName" class="col-sm-3 control-label">Description</label>
									<div class="col-sm-9">
										<textarea id="description" class="form-control"
											name="description" rows="5" cols="47"></textarea>
									</div>
								</div>
								<div class="form-group">

									<div class="col-sm-9">
										<label>Category</label> <select name="category" id="category"
											class="form-control">
											<option>Choose...</option>
											<option value="PEN">Pen</option>
											<option value="PENCIL">Pencil</option>
											<option value="NOTEBOOK">Notebook</option>
											<option value="FOLDER">Folder</option>
											<option value="BOOK">Book</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-3 control-label">Unit
										Price</label>
									<div class="col-sm-9">
										<input type="text" id="unitPrice" placeholder="unitPrice"
											name="unitPrice" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-3 control-label">In
										stock</label>
									<div class="col-sm-9">
										<input type="text" id="stock" placeholder="In stock"
											name="stock" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="image" class="col-sm-3 control-label">Upload
										Image</label>
									<div class="col-sm-9">
										<input type="file" id="file" placeholder="Choose file"
											name="product_image" class="form-control">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Register</button>
							</form:form>
							<!-- /form -->
						</div>


					</div>
					<!-- card-body.// -->
			</div>
			<!-- card .// -->



			</main>
			<!-- col.// -->
		</div>

		</div>
		<!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT END// ========================= -->

	<!-- ========================= FOOTER ========================= -->
	<footer class="section-footer bg-secondary text-white">
		<div class="container">

			<section class="footer-bottom text-center">
				<p class="text-white">Privacy Policy - Terms of Use - User
					Information Legal Enquiry Guide</p>
				<p class="text-muted">&copy 2019 Company name, All rights
					reserved</p>
				<br>
			</section>
		</div>
		<!-- //container -->
	</footer>
	<!-- ========================= FOOTER END // ========================= -->

</body>
</html>



