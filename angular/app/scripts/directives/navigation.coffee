@dirModule = angular.module 'directives', []

@dirModule.directive 'tabset', ->
  restrict: 'A'
  scope: {}
  template:'<ul class="nav" ng-transclude></ul>'
  replace: true
  transclude: true

  controller: () ->
    tabs = []
    @addTab = (tab) -> 
      tabs.push tab

@dirModule.directive 'homeTab', ->
  restrict: 'A'
  require: '^tabset'
  template: '<li><a class="home-link" href="/#"><i class="icon-home"></i></a></li>'
  replace: true
  link: (scope, elem, attrs, tabSetCtrl) ->
    tabSetCtrl.addTab scope  

@dirModule.directive 'tab', ->
  restrict: 'A'
  require: '^tabset'
  scope:
    route: '@route'
    text: '@text'
  template: '<li><a href="{{route}}" ng-bind="text"></a></li>'
  replace: true
  link: (scope, elem, attrs, tabSetCtrl) ->
    tabSetCtrl.addTab scope

