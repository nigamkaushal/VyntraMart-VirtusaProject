<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %> 
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<script src="../angular.min.js">
	</script>
	<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
	<style>
    .ng-valid {
      border-color: green;
      outline-color: green;
    }
  </style>
</head>
<header>
<body ng-app="">
<div  class="text-gray-700 body-font">
	 <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center"  >
	    <nav class="flex lg:w-2/5 flex-wrap items-center text-base md:ml-auto">
	      <a class="mr-5 hover:text-gray-900" href="../aboutus">Contact Us</a>
	      <a class="mr-5 hover:text-gray-900" href="../cart">Cart</a>
	      
	    </nav>
	    <a href="../home" class="flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-gray-900 lg:items-center lg:justify-center mb-4 md:mb-0">
	      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-orange-500 rounded-full" viewBox="0 0 24 24">
	        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
	      </svg>
	      <span class="ml-3 text-xl">VyntraMart</span>
	    </a >
	    <div class="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0"  >
	      <p  class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0"> 
	        </p>
	        
	      </a>
	      <p  class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0">
	      </p>
	    </div>
	</div>
	 
</div>                                
	</header>
	
	${SPRING_SECURITY_LAST_EXCEPTION.message}
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <form action="/signin" method="POST">
	                <div class="bg-white px-16 py-16 rounded shadow-md text-black w-full">
	                    <h1 class="mb-8 text-3xl text-center">Sign In</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="email"
	                        id="email"
	                        placeholder="Email" required/>
	
	                    <input 
	                        type="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="password"
	                        id="password"
	                        placeholder="Password" required/>
						
						Remember Me?
						<input
							type="checkbox"
							class="border-t-2 border-gray-200 w-10 text-center"
							name="remember-me"
							id="remember-me" />
						
						<br>
	                    <button
	                        type="submit"
	                        name="submit"
	                        id="submit"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Sign In</button>
	                    	                    
	                    
	                </div>
	
	                <div class="text-grey-dark mt-6">
	                    Don't have an account? 
	                    <a class="underline border-b border-blue text-blue" href="../signup/">
	                        Sign Up
	                    </a>.
	                </div>
                </form>
            </div>
        </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>
