<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="../angular.min.js">
	</script>
    <meta charset="UTF-8">
    <title>VyntraMart - Invoice</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.2/css/bootstrap.css'>

	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<header>
<body ng-app="">
<div  class="text-gray-700 body-font">
	 <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center" ng-init="flag=true">
	    <a href="../home" class="flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-gray-900 lg:items-center lg:justify-center mb-4 md:mb-0">
	      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-orange-500 rounded-full" viewBox="0 0 24 24">
	        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
	      </svg>
	      <span class="ml-3 text-xl">VyntraMart</span>
	    </a >
	</div>
	 
</div>            
	</header>
	
	    <div class="container">
	   <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Invoice</h1>
        <div class="card">
            
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-6">
                        <h6 class="mb-3">From:</h6>
                        <div>
                            <strong>VyntraMart</strong>
                        </div>
                        <div>4/333, Jaipur</div>
                        <div>Rajasthan, India</div>
                        <div>Email: info@vyntramart.com</div>
                        <div>Phone: +91 9800000000</div>
                    </div>

                    <div class="col-sm-6">
                        <h6 class="mb-3">To:</h6>
                        <div>
                            <strong>${data.customer_fullname}</strong>
                        </div>
                        <div> ${data.address}</div>
                        <div>${data.city}, ${data.country}</div>
                        <div>Pincode - ${data.pincode}</div>
                        <div>Email: ${data.customer_email}</div>
                        <div>Phone: ${data.contact_no}</div>
                    </div>
                </div>
				<c:set var = "grand_tot" value="0" scope="page" />
				<c:set var = "o_date" value="" scope="page" />
				
                <div class="table-responsive-sm">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="center">#</th>
                                <th>Product Brand</th>
                                <th>Product Title</th>
                                <th class="right">Price</th>
                                <th class="center">Quantity</th>
                                <th class="right">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:set var="count" value="1" scope="page" />
                        <c:forEach var="prod" items="${data.invoice_details}" >
                            <tr>
                                <td>${count}</td>
                                <td>${prod.brand_name}</td>
                                <td>${prod.product_title}</td>
                                <td>&#8377; ${prod.product_price}</td>
                                <td>${prod.product_qty}</td>
                                <c:set var = "total" value = "${prod.product_price*prod.product_qty}"/>
                                <td>&#8377; ${total}</td>
                            </tr>
                            <c:set var = "grand_tot" value="${grand_tot+total}" scope="page" />
                            <c:set var = "o_date" value="${prod.order_date}" scope="page" />
                            <c:set var="count" value="${count + 1}" scope="page" />
                        </c:forEach>
                        </tbody>
                        
                    </table>
                </div>
                <div class="card-header">	
                	Grand Total : 
                    <strong>&#8377; ${grand_tot}</strong>
                </div>
                <div class="card-header">
                    Order Date : 
                    <strong>${o_date}</strong>
                </div>
            </div>
        </div>
    </div>
            <form action="../home" method="post">
            <input type="submit" value="Continue Shopping" class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"/>
	
    	    </form>
</body>
</html>
