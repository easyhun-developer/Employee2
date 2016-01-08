/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/modify config...")
	
	$routeProvider.when("/modify/:id", {
		templateUrl: "modify.html",
		controller: "modifyController"
	});
	
});

app.controller('modifyController', function($scope, $http, URL, $routeParams, $location) {
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);

	$scope.$parent.title = "MODIFY Store View";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id); // /store/2000
	ajax.then(function(value) {
		console.dir(value);
		$scope.store = value.data;
	}, function(reason) {
		console.dir(reason);
		alert("error...");
	});
	
	$scope.submit = function() {		
		var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.store.id, {
			id 			: $scope.store.id,
			name 		: $scope.store.name,
			restype		: $scope.store.restype,
			district	: $scope.store.district,
			hitcount	: $scope.store.hitcount,
			email 		: $scope.store.email,
			password 	: $scope.store.password,
			lat		 	: $scope.store.lat,
			lng		 	: $scope.store.lng
		});
		
		ajax.then(function(response) {
			console.dir(response.data);
			$location.path("/list");
		}, function(response) {
			console.dir(response.data);
		});
		
	};
	
	
});
