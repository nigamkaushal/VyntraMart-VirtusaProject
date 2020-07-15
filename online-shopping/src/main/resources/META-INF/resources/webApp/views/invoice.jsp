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
</head>
<body ng-app="">

	<header ng-include="'../header'">                    
	</header>
	
	    <div class="container">
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
    
    <footer ng-include="'../footer'">                    
	</footer>
    
</body>
</html>
