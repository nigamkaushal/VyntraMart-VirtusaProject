<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %> 
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js">
	</script>
</head>
<body ng-app="">
	<header ng-include="'header'">                    
	</header>
	${SPRING_SECURITY_LAST_EXCEPTION.message}
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <form action="/signin" method="POST">
	                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-8 text-3xl text-center">Sign In</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="email"
	                        id="email"
	                        placeholder="Email" />
	
	                    <input 
	                        type="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="password"
	                        id="password"
	                        placeholder="Password" />
	
	                    <button
	                        type="submit"
	                        name="submit"
	                        id="submit"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Sign In</button>
	                    <br>
	                    <a class="underline border-b border-blue text-blue" href="../signup/">
	                        Forgot Password?
	                    </a>
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
	
	<footer ng-include="'footer'">                    
	</footer>
</body>
</html>
