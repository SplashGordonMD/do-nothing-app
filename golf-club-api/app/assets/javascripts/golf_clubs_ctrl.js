(function () {
  "use strict";

  angular.module("app").controller("golfClubsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('http://localhost:3000/api/v1/golf_clubs').then(function(response) {
        $scope.golfclubs = response.data;
      });
    };

    $scope.addGolfclub = function(inputvariety, inputbrand, inputnumber) {
      var params = {
	  	variety: inputvariety,
	  	brand: inputbrand,
	  	number: inputnumber	
	  };

      $http.post('/api/v1/golf_clubs', params).then(function(response) {
        $scope.golfclubs.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };
    
  });
})();

	