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
    #signup{
    	height:550px;
    }
  </style>
</head>
<body ng-app="myApp">
	<header ng-include="'../header'">                    
	</header>
	
	<section class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
	    <div class="bg-grey-lighter min-h-screen flex flex-col">
            <div class="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
                <form action="../signupform" method="post" name="myForm" id="signup"  novalidate  >
	                <div ng-controller="myCtrl"  class="bg-white px-6 py-8 rounded shadow-md text-black w-full" >
	                    <h1 class="mb-8 text-3xl text-center">Sign up</h1>
	                    <input 
	                        type="text"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="fullname" ng-model="fullname" 
                               placeholder="Full Name" ng-focus="focus=true"  ng-blur="focus=false" required/>
	                    <span style="color:red" ng-show="myForm.fullname.$error.required && focus">Username is required.</span>
	                    <input 
	                        type="text"
	                        id="email"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="email" ng-model="email" ng-focus="focus1=true" ng-blur="focus1=false"
	                        placeholder="Email" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/" required/>
	                    <span style="color:red" ng-show="myForm.email.$error.required && focus1">Email is required.</span>
	                    <span style="color:red" ng-show="myForm.email.$error.pattern && focus1 && myForm.email.$dirty">Invalid Email.</span>
	                    <input 
	                        type="password"
	                        id="password"
	                        class="block border border-grey-light w-full p-3 rounded mb-4"
	                        name="password" ng-model="password" ng-focus="focus2=true" ng-blur="focus2=false"
	                        placeholder="Password" required ng-pattern="/^(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/">
                        <div ng-messages="myForm.userPassword.$error">
                        <span style="color:red" ng-show="myForm.password.$error.required && focus2" >Password is required.</span> 
                        <span style="color:blue" ng-show="myForm.password.$error.pattern && focus2 && myForm.password.$dirty">Password should be 8 characters
                        long and should contain one digit,character and special character</span>
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
	                        value="Sign" ng-disabled="myForm.$invalid"
	                        class="flex mx-auto text-white bg-orange-500 border-0 py-2 px-8 focus:outline-none hover:bg-orange-600 rounded text-lg"
	                    >Create Account</button>
	
	                    
	                </div>
				</form>
                
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
    <footer ng-include="'../footer'">                    
	</footer>
</body>
</html>
