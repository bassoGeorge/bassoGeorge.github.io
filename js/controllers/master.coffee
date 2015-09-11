###
  Let's define the controllers module here,
  Then we will call this module every time for the other controllers
  and we make sure this file is loaded first
###

angular.module('agProfile.controllers', [])
.controller 'MasterController', ($scope, $state, $log) ->
  $log.info "Master initialized"
  $state.go 'profile'