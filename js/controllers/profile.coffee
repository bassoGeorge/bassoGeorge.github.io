angular.module('agProfile.controllers')
.controller 'ProfileController', ($scope, agData) ->
  $scope.profile_data = {}
  agData.get_profile()
  .success (data) ->
    $scope.profile_data = data
