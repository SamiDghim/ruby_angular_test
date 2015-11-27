#Group services/factories into a services directory
@cooking.factory 'restService', ['$resource', ($resource) ->
  recipes : $resource('/recipes/:id.json', {id: '@id'},
    {
      show:    { method: 'GET',isArray: false},
      index:   { method: 'GET',isArray: true},
      update:  { method: 'PUT'},
      destroy: { method: 'DELETE'},
      create:  { method: 'POST'}
    })
  ingredients: $resource('/ingredient/:id.json', {id: '@id'},
    {
      update: {method: 'PUT'}

    })
  user: $resource('/user/:id.json', {id: '@id'},
    {
      show:    { method: 'GET',isArray: false},
      index:   { method: 'GET',isArray: true}

    })


]