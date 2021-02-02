<%@include file="header.jsp" %>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
<main class="col-md-9">
<div class="card">

<div class="card">

<table class="table table-borderless table-shopping-cart">
<thead class="text-muted">
<tr class="small text-uppercase">
  <th scope="col">Product</th>
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="120">Price</th>
  <th scope="col" class="text-right" width="200"> </th>
</tr>
</thead>

	<c:forEach items="${sessionScope.cart}" var="product">
<tbody>
<tr>
	<td>
		<figure class="itemside">
			<div class="aside"><img src="<c:url value="/resources/images/products/${product.imageName}" />" class="img-sm"></div>
			<figcaption class="info">
				<a href="#" class="title text-dark">${product.title}</a>
			</figcaption>
		</figure>
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">1</var> 
		</div> <!-- price-wrap .// -->
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">${product.unitPrice}</var> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right">
	<a href="#" class="btn btn-light"> Remove</a>
	</td>
</tr>


</tbody>
</c:forEach>
</table>

</div>


<div class="card-body border-top">
	<a href="<spring:url value="/cart/checkout"></spring:url>" class="btn btn-primary float-md-right"> Make Purchase <i class="fa fa-chevron-right"></i> </a>
	<a href="<spring:url value="/"></spring:url>" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Continue shopping </a>
</div>	


<div class="alert alert-success mt-3">
	<p class="icontext"><i class="icon text-success fa fa-truck"></i> Free Delivery within 1-2 weeks</p>
</div>

	</main> <!-- col.// -->
	<aside class="col-md-3">
		<div class="card mb-3">
		<c:set var="Total" value="${0}" />
		<c:forEach var="product" items="${sessionScope.cart}">
		  <c:set var="Total" value="${Total + product.unitPrice}" />
		</c:forEach>
		
		<div class="card">
			<div class="card-body">
					<dl class="dlist-align">
					  <dt>Total price:</dt>
					  <dd id="totalPrice" class="text-right">Rs. ${Total}</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Discount:</dt>
					  <dd class="text-right">0.0</dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Total:</dt>
					  <dd id="grandtotal" class="text-right  h5"><strong>Rs. ${Total}</strong></dd>
					</dl>
					<hr>
					<p class="text-center mb-3">
						<a href="<spring:url value="/cart/checkout"></spring:url>" class="btn btn-primary float-md-right"> Place Order <i class="fa fa-chevron-right"></i> </a>
					</p>
					
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->

</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name border-top padding-y">
<div class="container">
<h6>Payment and refund policy</h6>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->
<%@include file="footer.jsp" %>