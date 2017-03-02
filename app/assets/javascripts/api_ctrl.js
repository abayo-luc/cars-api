(function() {
  "use strict";
  angular.module("app").controller("apiCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v2/cars.json").then(function(response) {
        $scope.cars = response.data
      });

    }

    $scope.addNewCar = function(identificationNumber , manufacturer) {
      var car = {
        identification_number: identificationNumber,
        manufacturer: manufacturer
      };

      $http.post("/api/v2/new.json", car).then(function(response) {
        $scope.cars.push(response.data);
      });
    }

    $scope.deleteCar = function(car,index) {
      $http.delete("/api/v2/cars/"+ car.id +".json").then(function(response) {
       $scope.cars.splice(index,1); 
      });
    }

    $scope.updateCar = function(identificationNumber, manufacturer, index) {
      var car = $scope.cars[index]
      if (identificationNumber && manufacturer) {
      var carUpdate = {
        identification_number: identificationNumber,
        manufacturer: manufacturer,
        id: car.id
      };
      $http.patch("/api/v2/cars/"+ car.id +".json", carUpdate).then(function(response) {
       $scope.cars[index] = carUpdate 
      });
      }
    }
    window.$scope = $scope;

  });
}());