'use strict'
todoApp = angular.module('todoApp', ['ngRoute', 'ui.bootstrap']);

todoApp.config(['$routeProvider',
  ($routeProvider) ->
    $routeProvider.when('/',
      templateUrl: '/templates/todo.html'
      controller: 'TodoCtrl').otherwise
      redirectTo: '/'
      caseInsensitiveMatch: true
    return
  ]
  todoApp.controller 'TodoCtrl', [
    '$scope',
    '$rootScope',
    'TodoService',
    ($scope, $rootScope, TodoService) ->
      $scope.formData = {}
      $scope.todos = []
      TodoService.getTodos().then (response) ->
        $scope.todos = response
        return

      $scope.addTodo = ->
        TodoService.addTodo($scope.formData).then (response) ->
          $scope.todos.push $scope.formData
          $scope.formData = {}
          return
        return


      return
  ]
