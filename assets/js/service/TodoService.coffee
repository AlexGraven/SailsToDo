todoApp.service 'TodoService', ($http, $q) ->
  {
    'getTodos': ->
      defer = $q.defer()
      $http.get('/todo/getTodos').success((resp) ->
        defer.resolve resp
        return
      ).error (err) ->
        defer.reject err
        return
      defer.promise
    'addTodo': (todo) ->
      defer = $q.defer()
      $http.post('/todo/addTodo', todo).success((resp) ->
        defer.resolve resp
        return
      ).error (err) ->
        defer.reject err
        return
      defer.promise
    'removeTodo': (todo) ->
      defer = $q.defer()
      $http.post('/todo/removeTodo', todo).success((resp) ->
        defer.resolve resp
        return
      ).error (err) ->
        defer.reject err
        return
      defer.promise

  }
