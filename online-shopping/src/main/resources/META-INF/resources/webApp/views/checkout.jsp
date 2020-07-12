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
<title>Checkout Page</title>
<style>
	#checkout
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
                <form action="#" method="post" id="checkout" >
	                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-6 text-2xl text-center">Checkout</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="fullname" 
	                        placeholder="Full Name" required/>
	
	                    <input 
	                        type="text"
	                        id="email"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="email" 
	                        placeholder="Email" required/>
	                        
	                        
	                    <input 
	                        type="text"
	                        id="address"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="address" 
	                        placeholder="Address" required/>
	                        
	                    <input 
	                        type="text"
	                        id="city"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="city" 
	                        placeholder="City" required/>
	
	                    <input 
	                        type="text"
	                        id="country"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="country" 
	                        placeholder="Country" required/>
	                    
	                    <input 
	                        type="text"
	                        id="contact no"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="contact no" 
	                        placeholder="Contact No." required/>
	                        
	                    
	                    <input 
	                        type="text"
	                        id="pin"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="pin" 
	                        placeholder="Pin Code" required/>
	                        
	                    <button
	                        type="submit"
	                        name="pay"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Proceed To Payment</button>
	
	                </div>
				</form>
            </div>
        </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>