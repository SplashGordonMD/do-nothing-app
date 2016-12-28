(function () {
  angular.module("app").controller("golfClubsCtrl", function($scope, $http) {
      $scope.setup = function() {
        $http.get('api/v1/golf_clubs').then(function(response) {
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

    $scope.deleteGolfclub = function(inputGolfclub) {
      var index = $scope.golfclub.indexOf(inputGolfclub);
      if (index !== -1) {
        $scope.people.splice(index, 1);
      }
    }; 

    $scope.changeOrderAttribute = function(inputAttribute) {
      if (inputAttribute === $scope.orderAttribute) {
     } else {
      scope.isOrderDescending = false;
    }
   $scope.orderAttribute = inputAttribute; 
  
    window.$scope = $scope;
  };
})();

end

