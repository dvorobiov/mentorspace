'use strict'
@app = angular.module('app', ['ui.state', 'directives'])


app.config ($stateProvider, $locationProvider) ->
  main =
    name: "main"
    url: "/"
    abstract: true
    templateUrl: "/views/main.html"
    controller: "MainCtrl"

  main_index =
    name: "main.index"
    parent: main
    url: ""
    templateUrl: "/views/index.html"
    controller: "IndexCtrl"


  $stateProvider.state(main).state(main_index)
        
  $locationProvider.html5Mode true      

