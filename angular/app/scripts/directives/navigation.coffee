@dirModule = angular.module 'directives', []



@dirModule.directive 'tabset', ->
  restrict: 'A'
  template:'<ul class="nav" ng-transclude></ul>'
  replace: true
  transclude: true