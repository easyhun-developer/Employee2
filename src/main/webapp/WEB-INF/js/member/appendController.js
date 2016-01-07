/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/append config...")
	
	$routeProvider.when("/append", {
		templateUrl: "append.html",
		controller: "appendController"
	});
	
});

app.controller('appendController', function($scope, $http, $location, URL) {
	console.log("appendController...");
	console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
	
	$scope.$parent.title = "Append Member View";
	
	$scope.member = {};
	
	$scope.submit = function() {
		var ajax = $http.post(URL.POST_ITEM_APPEND, {
			email : $scope.member.email,
			name : $scope.member.name,
			password : $scope.member.password,
			address : $scope.member.address,
			phone : $scope.member.phone
		});
		
		ajax.then(function(value) {
			$location.path("/list");
		}, function(reason) {
			console.dir(reason)
			$scope.member = reason.data;
		})

		
	};
	
});
