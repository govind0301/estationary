<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--To support form binding , import spring supplied form tag lib  --%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product Form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>


*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}


</style>
</head>
<body>
<h1>add product page</h1>


<div class="container">
            <form class="form-horizontal" role="form" method="get" action="/Estat/product/add1">
                <h2>Registration</h2>
                <input type="hidden" name="vendor_id" value="${sessionScope.vendor_dtls.vendorId}"/>
                <div class="form-group">
                    <label for="title" class="col-sm-3 control-label">Title</label>
                    <div class="col-sm-9">
                        <input type="text" id="title" placeholder="product title" name="title"  class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Description</label>
                    <div class="col-sm-9">
                        <textarea id="description" name="description"rows="5" cols="47"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="category" class="col-sm-3 control-label">Category</label>
                    <div class="col-sm-9">
						  <select name="category" id="category">
						    <option value="PEN">Pen</option>
						    <option value="PENCIL">Pencil</option>
						    <option value="NOTEBOOK">Notebook</option>
						    <option value="FOLDER">Folder</option>
						    <option value="BOOK">Book</option>
						  </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Unit Price</label>
                    <div class="col-sm-9">
                        <input type="text" id="unitPrice" placeholder="unitPrice" name="unitPrice" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">In stock</label>
                    <div class="col-sm-9">
                        <input type="text" id="stock" placeholder="In stock" name="stock" class="form-control">
                    </div>
                </div>
				 <button type="submit" class="btn btn-primary">Register</button>
</div>
               
            </form> <!-- /form -->
        </div> <!-- ./container -->

</body>
</html>