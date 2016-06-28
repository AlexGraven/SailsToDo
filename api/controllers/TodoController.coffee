module.exports =
    getTodos: (req, res) ->
        TodoService.getTodos (todos) ->
            res.json todos
        return

    addTodo: (req, res) ->
      todoVal = if req.body.value then req.body.value else undefined
      TodoService.addTodo todoVal, (success) ->
        res.json success
      return

    removeTodo: (req, res) ->
      todoVal = if req.body.value then req.body.value else undefined
      TodoService.removeTodo todoVal, (success) ->
        res.json success
        return
