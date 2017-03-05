  (function(){
    "use strict";

    angular.module("app").controller("friendCtrl", function($scope, $http) {
        $scope.message = "hello, world";

        $scope.setup = function() {
            $http.get("/api/v1/friends.json").then(function(response) {
                $scope.friends = response.data;
                console.log($scope.friends);
                $scope.friendsCount = $scope.friends.length;
            });
        };

        $scope.addfriend = function(first_name, last_name, birthday, cat_name){
          var params = {
            first_name: first_name,
            last_name: last_name,
            birthday: birthday,
            cat_name: cat_name
          };
          $http.post("/api/v1/friends.api", params).then(function(response){
            
          });
        };

    });
}());
