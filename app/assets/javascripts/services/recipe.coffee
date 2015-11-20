#Group services/factories into a services directory
@cooking.factory 'Recipe', ['$resource', ($resource) ->
  recipes : $resource('/recipes/:id.json', {id: '@id'},

    {
      show:    { method: 'GET', isArray: false },
      index:    { method: 'GET', isArray: true },
      update:  { method: 'PUT' },
      destroy: { method: 'DELETE'},
      create: { method: 'POST' }
    }

    )



]