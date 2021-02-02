
function addToCart(pid,pname,price)
{
	let cart = localStorage.getItem('cart');
	if(cart == null)
	{
		let products= [];
		let product = {productId: pid,productName: pname,productPrice: price,productQuantity : 1};
		products.push(product);
		localStorage.setItem("cart",JSON.stringify(products));
		console.log("product is added for first item")
	}
	else{
		let pcart = JSON.parse(cart);
		let oldProduct = pcart.find((item) => item.productId == pid)
		if(oldProduct)
		{
			oldProduct.productQuantity= oldProduct.productQuantity+1;
			pcart.map((item)=>{
				if(item.productId == oldProduct.productId)
				{
					item.productQuantity = oldProduct.productQuantity;
				}	
			})	
			localStorage.setItem("cart",JSON.stringify(pcart));
			console.log("product quantity is increased");
		}
		else{
			let product = {productId: pid,productName: pname,productPrice: price,productQuantity : 1};
			pcart.push(product);
			localStorage.setItem("cart",JSON.stringify(pcart));
			console.log("product added");
			console.log(pcart.length);
		}
	}
}

function updateCart()
{
	let cartString = sessionStorage.getItem("cart");
	let cart = JSON.parse(cartString);
	if(cart == null || cart.length == 0)
	{
		console.log("cart is empty");
		//document.getElementById("cart-items").innerHTML = " ( 0 ) ";
		document.getElementById("cart-body").innerHTML = " cart does not have any items";
		//$(".cart-items").html("( 0 ) ");
		//$(".cartbody").html(" <h3>cart does not have any items</h3> ");
		//$(".checkout-btn").addClass('disabled');
		document.getElementById("checkout-btn").classList.add("disabled");
   			//element.classList.add("disabled");
	}
	else{
		//$(".cart-items").html(`( $(cart.length) )`);
		//document.getElementById("cart-items").innerHTML = "( "+cart.length+" )";
		let table = `
			<table class='table'>
			<thead class="thead-light">
				<tr>
					<th>Item Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Action</th>
				</tr>
			</thead>
		`;
		let totalPrice = 0;
		for (var { productName, productPrice, productQuantity} of cart) {
		    table+=`
		      <tr>
		        <td>${productName}</td><td>Rs. ${productPrice}</td><td>${productQuantity}</td><td>Rs. ${productQuantity * productPrice}</td>
				<td><button class="btn btn-danger btn-sm">Remove</button</td>
		      </tr>
		    `
			totalPrice +=productPrice*productQuantity;
		  }
		table = table +`
		<tr><td>Total price : Rs. ${totalPrice} </td></tr>
		 </table>`
	//$(".cart-body").html(table);
	document.getElementById("cart-body").innerHTML = table;
	document.getElementById("checkout-btn").classList.remove("disabled");
	document.getElementById("cardtable").innerHTML =  table;
	document.getElementById("totalPrice").innerHTML = 'Rs.'+totalPrice;
	document.getElementById("grandtotal").innerHTML = 'Rs.'+totalPrice;
	
	}
	
};

function goToCheckout()
{
	window.location = "checkout.jsp"
}
 
// jquery ready start
$(document).ready(function() {
	// jQuery code

  // var html_download = '<a href="http://bootstrap-ecommerce.com/templates.html" class="btn btn-dark rounded-pill" style="font-size:13px; z-index:100; position: fixed; bottom:10px; right:10px;">Download theme</a>';
  //  $('body').prepend(html_download);
    

	//////////////////////// Prevent closing from click inside dropdown
    $(document).on('click', '.dropdown-menu', function (e) {
      e.stopPropagation();
    });


     ///////////////// fixed menu on scroll for desctop
    if ($(window).width() < 768) {

     	$('.nav-home-aside .title-category').click( function(e){
     		e.preventDefault();
     		$('.menu-category').slideToggle('fast', function() { $('.menu-category .submenu').hide() });
     	});

     	$('.has-submenu a').click( function(e){
     		e.preventDefault();
     		$(this).next().slideToggle('fast');
     	});
 
    } // end if


    // custom checkbox inside card effect
    $('.js-check :radio').change(function () {
        var check_attr_name = $(this).attr('name');
        if ($(this).is(':checked')) {
            $('input[name='+ check_attr_name +']').closest('.js-check').removeClass('active');
            $(this).closest('.js-check').addClass('active');
           // item.find('.radio').find('span').text('Add');

        } else {
            item.removeClass('active');
            // item.find('.radio').find('span').text('Unselect');
        }
   
    });

	//////////////////////// Bootstrap tooltip
	if($('[data-toggle="tooltip"]').length>0) {  // check if element exists
		$('[data-toggle="tooltip"]').tooltip()
	} // end if


	// offcanvas menu
	$("[data-trigger]").on("click", function(e){
        e.preventDefault();
        e.stopPropagation();
        var offcanvas_id =  $(this).attr('data-trigger');
        $(offcanvas_id).toggleClass("show");
        $('body').toggleClass("offcanvas-active");
        $(".screen-overlay").toggleClass("show");
    }); 

   	// Close menu when pressing ESC
    $(document).on('keydown', function(event) {
        if(event.keyCode === 27) {
           $(".mobile-offcanvas").removeClass("show");
           $("body").removeClass("overlay-active");
        }
    });
    // Close menu by clicking
    $(".btn-close, .screen-overlay").click(function(e){
    	$(".screen-overlay").removeClass("show");
        $(".mobile-offcanvas").removeClass("show");
        $("body").removeClass("offcanvas-active");
    }); 

updateCart();
    
}); 
// jquery end

