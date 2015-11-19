#Group services/factories into a services directory
@cooking.factory 'Recipe', ['$resource', ($resource) ->
  $resource('/recipes/:id.json', {id: '@id'}, {update: {method: 'PUT'}})
]