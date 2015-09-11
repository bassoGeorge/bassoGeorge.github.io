angular.module 'agProfile.directives', []
.directive 'agStarRating', () ->
  restrict: 'E'
  scope:
    rating: '=rating'
  templateUrl: './templates/directives/ag_star_rating.html'