<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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

	<header ng-include="'../header'">                    
	</header>

	<section class="text-gray-700 body-font">
	  <div class="container px-5 py-24 mx-auto">
	    <div class="flex flex-wrap -m-4">
	    	<c:forEach var="prod" items="${data}" >
		      <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
		        <a class="block relative h-48 rounded overflow-hidden" href="../product/${prod.product_id}">
		          <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="../images/${prod.product_id}_small.jpg">
		        </a>
		        <div class="mt-4">
		          <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">${prod.brand_name}</h3>
		          <h2 class="text-gray-900 title-font text-lg font-medium">${prod.product_title}</h2>
		          <p class="mt-1"> &#8377;${prod.product_price}</p>
		        </div>
		      </div>
	      </c:forEach>
	    </div>
	  </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>