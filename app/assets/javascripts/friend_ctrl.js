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

        $scope.addperson = function(){
          
        };

    });
}());
