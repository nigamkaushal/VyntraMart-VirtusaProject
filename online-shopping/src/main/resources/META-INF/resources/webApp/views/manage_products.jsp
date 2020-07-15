<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<script src="../angular.min.js">
	</script>
	
<title>VyntraMart - Manage Products</title>

</head>
<body ng-app="">
	<header ng-include="'../header'">                    
	</header>
	
	<section class="text-gray-700 body-font">
	  <div class="container px-5 py-24 mx-auto">
	    <div class="flex flex-col text-center w-full mb-20">
	      <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">Display Products</h1>
	      <table class="table-auto w-full text-left whitespace-no-wrap">
	        <thead>
	          <tr>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">Product Id</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Title</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Brand Name</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Description</th>
	            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Price</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach var="prod" items="${command}" > 
	          	<tr>
	                 <td class="border-t-2 border-gray-200 px-4 py-3">${prod.product_id}</td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3">${prod.product_title}</td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3">${prod.brand_name}</td>
	                 <td class="border-t-2 border-gray-200 px-4 py-3">${prod.product_description}</td>
			       	 <td class="border-t-2 border-gray-200 px-4 py-3">${prod.product_price}</td>									                        
				</tr>
				</c:forEach>
	        </tbody>
	      </table>
	    </div>
	    <div class="flex flex-col text-center w-full mb-20">
	      <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">Manage Products</h1>
		    <form action="../manage_product_form" method="post">
			    <div class="lg:w-2/3 w-full mx-auto overflow-auto">
			    <table class="table-auto w-full text-left whitespace-no-wrap">
			        <thead>
			          <tr>
			            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">Product Id</th>
			            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Title</th>
			            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Brand Name</th>
			            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Description</th>
			            <th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Product Price</th>
			          </tr>
			        </thead>
			        <tbody>
	          			<tr>
		                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" name="product_id" /></td>
		                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" name="product_title" /></td>
		                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" name="brand_name" /></td>
		                 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" name="product_description" /></td>
				       	 <td class="border-t-2 border-gray-200 px-4 py-3"><input type="text" name="product_price" /></td>									                        
						</tr>
			        </tbody>
	      		</table>
			    </div>
			    <div class="flex pl-4 mt-4 lg:w-2/3 w-full mx-auto">
			      <input type="submit" name="add" value="Add Product"
			      class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" />
			    <input type="submit" name="update" value="Update Product"
			      class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" />
			    <input type="submit" name="delete" value="Delete Product"
			      class="flex ml-auto text-white bg-orange-500 border-0 py-2 px-6 focus:outline-none hover:bg-orange-600 rounded" />
			    </div>
			</form>
		</div>
	    
	  </div>
	</section>
	<footer ng-include="'../footer'">                    
	</footer>
</body>
</html>