<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js">
	</script>
	<title>Payment Page</title>
	<style>
		#payment
		{
			width:750px;
			height:600px;
		}
	</style>
</head>
<body ng-app="">
	
	<header ng-include="'../header'">                    
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-10">
                <form action="#" method="post" id="payment" >
	                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-6 text-2xl text-center">Payment</h1>
	                    <select class="block border border-grey-light w-full p-3 rounded mb-4">
	                    <option>Debit Card</option>
	                    <option>Credit Card</option>
	                    </select> 
	                       
	
	                    <input 
	                        type="text"
	                        id="card_no"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="card_no" 
	                        placeholder="Card Number" required/>
	                        
	                        <input 
	                        type="text"
	                        id="card_name"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="card_name" 
	                        placeholder="Name on Card" required/>
	                  
	                        
	                    <input 
	                        type="date"
	                        id="expiry"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="expiry" value="dd-mm-yyyy"
       						min="1990-01-01" max="2030-12-31"
	                        placeholder="Expiry on Card" required/>
	
	                      <input 
	                        type="text"
	                        id="cvv"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="cvv" 
	                        placeholder="CVV" required/>
	                        
	                    
	                    
	                        
	                    <button
	                        type="submit"
	                        name="sign"
	                        value="Sign" 
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Order Now</button>
	
	                </div>
				</form>
            </div>
        </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>