###
  So, the prefix for my profile will be 'ag'
  Lets call the main app: agProfile
###
angular.module 'agProfile', [
  'ui.router',
  'agProfile.controllers', 'agProfile.directives'
]
.config ($stateProvider) ->
  $stateProvider
  .state('profile',
    templateUrl: './templates/views/view_profile.html'
  )
  .state('test',
    templateUrl: './templates/views/view_test.html'
    controller: 'TestController'
  )
