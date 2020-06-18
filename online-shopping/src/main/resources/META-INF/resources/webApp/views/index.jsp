<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %> 
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
		rel="stylesheet">
	<title>VyntraMart - Online Cloth Shopping Site </title>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js">
	</script>
</head>
<body ng-app="">
	<header ng-include="'header'">                    
	</header>

	<section class="text-gray-700 body-font">
	  <div class="container px-5 py-24 mx-auto">
	    <div class="flex flex-wrap -m-4">
	      <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
	        <a class="block relative h-48 rounded overflow-hidden">
	          <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="https://source.unsplash.com/420x260/?tshirt">
	        </a>
	        <div class="mt-4">
	          <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
	          <h2 class="text-gray-900 title-font text-lg font-medium">TShirt</h2>
	          <p class="mt-1">$16.00</p>
	        </div>
	      </div>
	      <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
	        <a class="block relative h-48 rounded overflow-hidden">
	          <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="https://source.unsplash.com/421x261/?jeans">
	        </a>
	        <div class="mt-4">
	          <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
	          <h2 class="text-gray-900 title-font text-lg font-medium">Jeans</h2>
	          <p class="mt-1">$21.15</p>
	        </div>
	      </div>
	      <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
	        <a class="block relative h-48 rounded overflow-hidden">
	          <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="https://source.unsplash.com/422x262/?shoes">
	        </a>
	        <div class="mt-4">
	          <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
	          <h2 class="text-gray-900 title-font text-lg font-medium">Shoes</h2>
	          <p class="mt-1">$12.00</p>
	        </div>
	      </div>
	      <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
	        <a class="block relative h-48 rounded overflow-hidden">
	          <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="https://source.unsplash.com/420x260/?Suit">
	        </a>
	        <div class="mt-4">
	          <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
	          <h2 class="text-gray-900 title-font text-lg font-medium">Suit</h2>
	          <p class="mt-1">$18.40</p>
	        </div>
	      </div>

	    </div>
	  </div>
	</section>
	
	<footer ng-include="'footer'">                    
	</footer>
	
</body>
</html>