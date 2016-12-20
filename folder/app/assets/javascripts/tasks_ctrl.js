/* global angular */

(function() {
  "use strict";

  angular.module("app").controller("taskCtrl", function($scope) {
    $scope.myMessage = "Yo yo yo!";
    $scope.myName = "Casey";
    $scope.sum = 13 + 16;
    $scope.tasks = ["Wash the dishes", "Go to Bed", "Say Good night"];
    
    $scope.addTask = function(inputText) {
     $scope.tasks.push(inputText);
    };
    });

})();