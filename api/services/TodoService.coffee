module.exports =
  getTodos: (next) ->
    Todo.find().exec (err, todos) ->
      if err
        throw err
      next todos
      return
    return
  addTodo: (todoVal, next) ->
    Todo.create(value: todoVal).exec (err, todo) ->
      if err
        throw err
      next todo
      return
    return
  removeTodo: (todoVal, next) ->
    Todo.destroy(value: todoVal).exec (err, todo) ->
      if err
        throw err
      next todo
      return
    return
