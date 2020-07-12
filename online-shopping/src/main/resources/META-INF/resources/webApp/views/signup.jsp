<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js">
	</script>
    <style>
    .ng-valid {
      border-color: green;
      outline-color: green;
    }
    #myform{
			height:600px;
	}
  </style>
</head>
<body ng-app="myApp">
	<header ng-include="'/../header'">                    
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <form action="../signupform" method="post" name="myForm" id="myform">
	                <div ng-controller="myCtrl" class="bg-white px-6 py-8 rounded shadow-md text-black w-full">
	                    <h1 class="mb-8 text-3xl text-center">Sign up</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="fullname" ng-model="fullname"
                               placeholder="Full Name" required/>
	                    <span style="color:red" ng-show="myForm.fullname.$error.required">Username is required.</span>
	                    <input 
	                        type="text"
	                        id="email"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="email" ng-model="email"
	                        placeholder="Email" required/>
	                    <span style="color:red" ng-show="myForm.email.$error.required">Email is required.</span>
	                    <input 
	                        type="password"
	                        id="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="password" ng-model="password"
	                        placeholder="Password" required ng-pattern="/^(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/">
                        <div ng-messages="myForm.userPassword.$error">
                        <span style="color:red" ng-show="myForm.password.$error.required">Required!</span> 
                        <span style="color:blue" ng-show="!myForm.password.$valid">Password should be at least 8 characters
                        long and should contain one number,one character and one special character</span>
                        </div>
                        <br/>
	                    <input 
	                        type="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="confirmPassword" ng-model="confirmPassword"
	                        placeholder="Confirm Password" required="" compare-to="password"/>
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
	
	
	<script>
        var app=angular.module('myApp',[]);
        app.controller('myCtrl',function($scope)
                       {
                 $scope.fullname="";
                 $scope.email="";
            $scope.password="";
            $scope.confirmPassword="";
                 
    });
         app.directive("compareTo", function() {
      return {
        require: "ngModel",
        scope: {
          confirmPassword: "=compareTo"
        },
        link: function(scope, element, attributes, modelVal) {

          modelVal.$validators.compareTo = function(val) {
            return val == scope.confirmPassword;
          };

          scope.$watch("confirmPassword", function() {
            modelVal.$validate();
          });
        }
      };
    });
    </script>
    <footer ng-include="'/../footer'">                    
	</footer>
</body>
</html>
