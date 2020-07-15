<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<script src="../angular.min.js">
	</script>
	
<title>VyntraMart - Cart Page</title>
<script>
var app=angular.module('myApp',[]);
app.controller('myCtrl', function ($scope, $http){
	 
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

	});
</script>
</head>
<body ng-app="myApp" ng-controller="myCtrl">
	
	<header ng-include="'../header'">                    
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
	                 <td style="display:none"><input name="pid" value="{{product.product_id}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" readonly="readonly" value="{{product.product_title}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input name="price" type="text" readonly="readonly" value="{{product.product_price}}"/></td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3"><input name="qty" type="number" min="1" max="5" ng-model="product.quantity" ng-init="product.quantity=1" ></td>
			        <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" readonly="readonly" value="Rs {{ product.product_price * product.quantity }}"/></td>
			        <td><input name="delete" value="Delete" type="submit"
			         class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" /></td>													          
	                                
				</tr>
	          <tr id="total">
	                             <td class="border-t-2 border-gray-200 px-4 py-3" ></td>
	                             <td class="border-t-2 border-gray-200 px-4 py-3"></td>
	                            <td class="border-t-2 border-gray-200 px-4 py-3"><b>Total:</b></td>
	                            <td class="border-t-2 border-gray-200 px-4 py-3">Rs {{ total() }}</td>
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