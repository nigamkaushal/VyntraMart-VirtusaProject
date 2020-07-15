<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<script src="../angular.min.js">
	</script>
<title>Checkout Page</title>
<meta charset="utf-8">
	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<script>
	var app=angular.module("myApp1",[]);
	app.controller("myCtrl1",function($scope,$http)
			{
		 $scope.fullname="";
         $scope.address="";
         $scope.city="";
         $scope.country="";
         $scope.contact_no="";
         $scope.pin="";
		$scope.user={};
		$http({
		      method: 'GET',
		      url: '/get_userinfo'
		   }).then(function (response){
				$scope.users=response.data;
				console.log(response.data);
				console.log(response.data.fullname);
				},function (error){
			   console.log(error, 'can not get data.');
			   $scope.users={};
		   });
		 $scope.showSignin = function () {
			    $('#sign').fadeIn()
			 }
		});

</script> 
</head>
<style>
	#checkout
	{
		width:750px;
		height:600px;
	}
	.ng-valid{
      border-color: green;
      outline-color: green;
    }
</style>
</head>
	
<header>
<body ng-app="myApp1" ng-controller="myCtrl1">
<div  class="text-gray-700 body-font">
	 <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center" ng-init="flag=true">
	    <nav class="flex lg:w-2/5 flex-wrap items-center text-base md:ml-auto">
	      <a class="mr-5 hover:text-gray-900" href="../aboutus">Contact Us</a>
	      <a class="mr-5 hover:text-gray-900" href="../cart">Cart</a>
	      <a class="mr-5 hover:text-gray-900" href="../manage_products" ng-show="users.role=='ADMIN'">Manage Product</a>
	    </nav>
	    <a href="../home" class="flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-gray-900 lg:items-center lg:justify-center mb-4 md:mb-0">
	      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-orange-500 rounded-full" viewBox="0 0 24 24">
	        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
	      </svg>
	      <span class="ml-3 text-xl">VyntraMart</span>
	    </a >
	    <div class="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0"  >
	      <a href="../../signin" class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" id="sign" ng-if="users.fullname=='empty'">Sign In 
	        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
	       
	          <path d="M5 12h14M12 5l7 7-7 7"></path>
	        </svg>
	        
	      </a>
	      <div>
	      <p ng-model="user.fullname" ng-show="users.fullname!='empty'" class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0">Hii {{ users.fullname }}</p>
	      </div>
	      &emsp;
	      
	      
	      &emsp;
	      <div ng-show="users.fullname!='empty'">
	      <a href="../../signout" class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" ng-if="users.fullname=='empty' || users.fullname!='empty'">Sign Out
	        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
	          <path d="M5 12h14M12 5l7 7-7 7"></path>
	        </svg>
	      </a>
	      </div>
	    </div>
	</div>
	 
</div>
                          
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-10">
                <form action="../payment" method="post" name="myForm" nonvalidate>
	                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
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
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>