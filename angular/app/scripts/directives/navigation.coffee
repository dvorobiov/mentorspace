@dirModule = angular.module 'directives', []

@dirModule.directive 'tabset', ->
  restrict: 'A'
  scope: {}
  template:'<ul class="nav" ng-transclude></ul>'
  replace: true
  transclude: true

@dirModule.directive 'homeTab', ->
  restrict: 'A'
  require: '^tabset'
  template: '<li><a class="home-link" href="/"><i class="icon-home"></i></a></li>'
  replace: true

@dirModule.directive 'tab', ->
  restrict: 'A'
  require: '^tabset'
  scope:
    route: '@route'
    text: '@text'
  template: '<li><a href="{{route}}">{{text}}</a></li>'
  replace: true

