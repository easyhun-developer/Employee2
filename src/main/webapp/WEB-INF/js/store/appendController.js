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
	
	$scope.$parent.title = "Append Store View";
	
	$scope.store = {};
	
	$scope.submit = function() {
		var ajax = $http.post(URL.POST_ITEM_APPEND, {
			name : $scope.store.name,
			restype : $scope.store.restype,
			district : $scope.store.district,
			hitcount : $scope.store.hitcount,
			email : $scope.store.email,
			password : $scope.store.password,
			lat : $scope.store.lat,
			lng : $scope.store.lng
		});
		
		ajax.then(function(value) {
			$location.path("/list");
		}, function(reason) {
			console.dir(reason)
			$scope.store = reason.data;
		})

		
	};
	
});
