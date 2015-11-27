@cooking.controller 'homeCtrl', ($scope,restService,Auth) ->
  counter = 1;

  $scope.recipes = restService.recipes.index()
  console.log(Auth._currentUser)

 #search for recipe
  $scope.searchRecipe = ->
    $scope.recipes = restService.recipes.index(
      search: $scope.search
    )

  $scope.detailsRecipe = (recipe) ->
    console.log(recipe)

  $scope.addRecipe = ->
    recipe = restService.recipes.create($scope.newRecipe)
    $scope.newRecipe = {}

  #load the next page
  $scope.loadNextPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter += 1 ;

  #load previouspage
  $scope.loadPreviousPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter -= 1 ;
  $scope.getUser = (user_id) ->
    restService.user.show(user_id: user_id)