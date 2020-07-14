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
<body ng-app="myApp" >
	
	<header ng-include="'../header'">                    
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-10">
                <form action="../payment" method="post" name="myForm" nonvalidate>
	                <div ng-controller="myCtrl" class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-6 text-2xl text-center">Checkout</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="fullname" ng-model="fullname"
	                        placeholder="Full Name" ng-focus="focus=true"  ng-blur="focus=false" required/>
						<span style="color:red" ng-show="myForm.fullname.$error.required && focus">Username is required.</span>
	                   
	                    <input 
	                        type="text"
	                        id="address" ng-model="address"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="address" ng-focus="focus2=true"  ng-blur="focus2=false"
	                        placeholder="Address" required/>
	                     <span style="color:red" ng-show="myForm.address.$error.required && focus2">Address is required.</span>  
	                    <input 
	                        type="text"
	                        id="city" ng-model="city"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="city" ng-focus="focus3=true"  ng-blur="focus3=false"
	                        placeholder="City" required/>
						<span style="color:red" ng-show="myForm.city.$error.required && focus3">City is required.</span>  
	                    <input 
	                        type="text"
	                        id="country" ng-model="country"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="country" ng-focus="focus4=true"  ng-blur="focus4=false"
	                        placeholder="Country" required/>
	                    <span style="color:red" ng-show="myForm.country.$error.required && focus4">Country is required.</span>  
	                    <input 
	                        type="text"
	                        id="contact_no" ng-model="contact_no"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="contact_no" ng-focus="focus5=true"  ng-blur="focus5=false"
	                        placeholder="Contact No." ng-pattern="/^\+?\d{2}[- ]?\d{3}[- ]?\d{5}$/" required/>
	                     <span style="color:red" ng-show="myForm.contact_no.$error.required && focus5">Contact No. is required.</span> 
	                     <span style="color:red" ng-show="myForm.contact_no.$error.pattern && focus5 && myForm.contact_no.$dirty">Please match pattern [+91-036-78658 || 91-036-78658]</span>
	                    <input 
	                        type="text"
	                        id="pin" ng-model="pin"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="pin" ng-focus="focus6=true"  ng-blur="focus6=false"
	                        placeholder="Pin Code" required/>
	                     <span style="color:red" ng-show="myForm.pin.$error.required && focus6">Pin No. is required.</span>
	                    <input
	                        type="submit"
	                        name="pay" value="Proceed To Payment" ng-disabled="myForm.$invalid"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    />
	
	                </div>
				</form>
            </div>
        </div>
	</section>
	<script>
	var app=angular.module('myApp',[]);
    app.controller('myCtrl',function($scope)
                   {
             $scope.fullname="";
             $scope.address="";
             $scope.city="";
             $scope.country="";
             $scope.contact_no="";
             $scope.pin="";
});
	</script>
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>