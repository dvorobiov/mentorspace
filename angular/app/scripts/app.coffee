'use strict'
@app = angular.module('app', ['ui.state', 'directives'])

app.config ($stateProvider, $locationProvider) ->
  main =
    name: "main"
    templateUrl: "/views/main.html"
    controller: "MainCtrl"

  main_index =
    name: "main.index"
    parent: main
    url: ""
    templateUrl: "/views/index.html"
    controller: "IndexCtrl"

  main_mentor_find =
    name: "main.mentor.find"
    parent: main
    url: "/mentor/find"
    templateUrl: "/views/findMentor.html"
    controller: "FindMentorCtrl"

  main_mentor_new =
    name: "main.mentor.new"
    parent: main
    url: "/mentor/new"
    templateUrl: "/views/newMentor.html"
    controller: "NewMentorCtrl"


  $stateProvider
    .state(main)
    .state(main_index)
    .state(main_mentor_find)
    .state(main_mentor_new)
        
  # $locationProvider.html5Mode true      

