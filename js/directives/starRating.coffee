angular.module 'agProfile.directives', []
.directive 'agStarRating', () ->
  restrict: 'AE'
  scope:
    rating: '='
    total: '='
    css: '@'
  template: """ <i class="fa" ng-repeat="star in stars track by $index" ng-class="getClass(star)"></i> """
  compile: (elem, attr) ->
    attr.total = "5" if not attr.total

  controller: ($scope) ->
    update = () ->
      rating = parseFloat($scope.rating)
      total = parseInt($scope.total)

      rateInt = Math.floor(rating)
      rest = total - rateInt
      stared = (1 for i in _.range(rateInt))
      unstared = (0 for i in _.range(rest))
      if rateInt < rating
        unstared[0] = 0.5
      $scope.stars = stared.concat(unstared)

    $scope.$watch(
      'rating',
      update
    )

    $scope.$watch(
      'total',
      update
    )

    $scope.getClass = (star) ->
      cls = switch star
        when 1 then "fa-star"
        when 0 then "fa-star-o"
        when 0.5 then "fa-star-half-o"
      cls += " " + $scope.css
