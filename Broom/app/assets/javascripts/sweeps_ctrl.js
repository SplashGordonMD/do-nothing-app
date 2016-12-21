/* global angular */

(function() {
  angular.module("app").controller("sweepsCtrl", function($scope) {
    $scope.tasks = [
      "Take out the garbage",
      "Clean my boots",
      "Shovel the snow"
    ];

    $scope.addTask = function(inputTask) {
      if (inputTask !== '' && inputTask !== undefined) {
        $scope.tasks.push(inputTask);
        $scope.newTask = '';
      }
    };

    $scope.completeTask = function(inputTask) {
      var index = $scope.tasks.indexOf(inputTask);
      if (index > -1) {
        $scope.tasks.splice(index, 1);
      }
    };
  });
})();