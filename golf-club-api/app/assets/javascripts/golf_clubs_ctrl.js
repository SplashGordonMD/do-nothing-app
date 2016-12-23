(function () {
  "use strict";

  angular.module("app").controller("golfClubsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('http://localhost:3000/api/v1/golf_clubs').then(function(response) {
        $scope.golfclubs = response.data;
      });
    };
    
  });
})();