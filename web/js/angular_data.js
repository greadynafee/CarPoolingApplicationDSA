var app = angular.module("mylms", ['ngCookies']);
app.controller("myLMSCtrl", function($scope, $cookies, $cookieStore, $http) 
{

	
	/************************* Book Now ****************************/
		$scope.book_now = function(x.email,x.accno) 
			{
				$cookieStore.put("cook_sender_email",email);
				$cookieStore.put("cook_accno",accno);
				window.location = "pay.html";
				return;
			}
		$scope.cook_accno = $cookieStore.get("cook_accno");
		$scope.cook_sender_email = $cookieStore.get("cook_sender_email");

	
});