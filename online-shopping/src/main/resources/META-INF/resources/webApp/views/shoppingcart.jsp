<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<script src="../angular.min.js">
	</script>
	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<title>VyntraMart - Cart Page</title>
<script>

var app=angular.module('myApp1',[]);
app.controller('myCtrl1', function ($scope, $http){
	 
	   $http({
	      method: 'GET',
	      url: '/cart/getProducts'
	   }).then(function (response){
			$scope.products= response.data;
			
			 $scope.total = function(){
				    var total = 0;
				    angular.forEach($scope.products,function(product){
				        total=total+parseInt(product.product_price)*product.quantity;
				    })
				    return total;
				  }

			    
	   },function (error){
		   console.log(error, 'can not get data.');
		   $scope.products={};
	   });
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
	   $scope.del=function(s){
			$http.delete("/cart/delete/" + s);
			location.reload(); 
		}
	});
</script>
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
	
	<section class="text-gray-700 body-font">
	  <div class="container px-5 py-24 mx-auto">
	    <div class="flex flex-col text-center w-full mb-20">
	      <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">Shopping Cart</h1>
	      
	    </div>
	    <form action="../checkout" method="post">
	    <div class="lg:w-2/3 w-full mx-auto overflow-auto">
	      <table class="table-auto w-full text-left whitespace-no-wrap">
	        <thead>
	          <tr>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">Product Name</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Price</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Quantity</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Total</th>
	            <th class="w-10 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tr rounded-br"></th>
	          </tr>
	        </thead>
	        <tbody>
	          <tr ng-repeat="product in products">
	                 <td style="display:none"><input ng-model="product.product_id" name="pid" value="{{product.product_id}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" readonly="readonly" value="{{product.product_title}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input name="price" type="text" readonly="readonly" value="{{product.product_price}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input name="qty" type="number" min="1" max="5" ng-model="product.quantity" ng-init="product.quantity=1" ></td>
			        <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" readonly="readonly" value="&#8377; {{ product.product_price * product.quantity }}"/></td>
			        <td><button type="button" ng-click="del(product.product_id)"
			        class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" />Delete</button></td>													          
	                                
				</tr>
	          <tr id="total">
	                             <td class="border-t-2 border-gray-200 px-4 py-3" ></td>
	                             <td class="border-t-2 border-gray-200 px-4 py-3"></td>
	                            <td class="border-t-2 border-gray-200 px-4 py-3"><b>Total:</b></td>
	                            <td class="border-t-2 border-gray-200 px-4 py-3">&#8377; {{ total() }}</td>
	                        </tr>
	          
	        </tbody>
	      </table>
	      
	    </div>
		    <div class="flex pl-4 mt-4 lg:w-2/3 w-full mx-auto">
		      <input type="submit" name="proceed" value="Proceed To Checkout"
		      class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" />
		    </div>
	    </form>
	  </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>