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
	<header ng-include="'../header'">                    
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <form action="signupform" method="post">
	                <div class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-8 text-3xl text-center">Sign up</h1>
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
	                        type="password"
	                        id="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="password"
	                        placeholder="Password" required/>
	                    <input 
	                        type="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="confirm_password"
	                        placeholder="Confirm Password" required/>
	
	                    <button
	                        type="submit"
	                        name="sign"
	                        value="Sign"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Create Account</button>
	
	                    <div class="text-center text-sm text-grey-dark mt-4">
	                        By signing up, you agree to the 
	                        <a class="no-underline border-b border-grey-dark text-grey-dark" href="#">
	                            Terms of Service
	                        </a> and 
	                        <a class="no-underline border-b border-grey-dark text-grey-dark" href="#">
	                            Privacy Policy
	                        </a>
	                    </div>
	                </div>
				</form>
                <div class="text-grey-dark mt-6">
                    Already have an account? 
                    <a class="underline border-b border-blue text-blue" href="../signin/">
                        Log in
                    </a>.
                </div>
            </div>
        </div>
	</section>
	
	<footer ng-include="'../footer'">                    
	</footer>
	
</body>
</html>
