<%@include file="../header.jsp"%>
<section class="section-conten padding-y" style="min-height:84vh">

<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <c:if test="${requestScope.mesg != null}">
        	<strong><p>${requestScope.mesg}</p></strong>
        </c:if>
      <h4 class="card-title mb-4">Customer Sign in</h4>
      <form action="<spring:url value="/customer/login"></spring:url>" method="post">
      	 
          <div class="form-group">
			 <input name="email" class="form-control" placeholder="email" type="email" required>
          </div> <!-- form-group// -->
          <div class="form-group">
			<input name="password" class="form-control" placeholder="password" type="password" required>
          </div> <!-- form-group// -->
          <div class="form-group">
              <input type="submit" class="btn btn-primary btn-block" value="Login">
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <p class="text-center mt-4">Don't have account? <a href="<spring:url value="/customer/registration"></spring:url>">Sign up</a></p>
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<%@include file="../footer.jsp"%>