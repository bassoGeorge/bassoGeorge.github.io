###
  Let's define the controllers module here,
  Then we will call this module every time for the other controllers
  and we make sure this file is loaded first
###

angular.module('agProfile.controllers', [])
.controller 'MasterController', ($scope, $state, $log) ->
  $log.info "Master initialized"
  if not $state.is('test')
    $state.go 'profile'

.controller 'TestController', ($scope, agData, $log) ->
  $scope.rating = 1.5
  $scope.incRating = () ->
    $scope.rating += 0.5

  agData.get_profile()
  .success (data) ->
    $log.debug "Received the data: "+JSON.stringify(data)
