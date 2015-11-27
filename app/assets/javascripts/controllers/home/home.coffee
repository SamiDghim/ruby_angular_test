@cooking.controller 'homeCtrl', ($scope,restService,Auth) ->
  counter = 1;

  $scope.recipes = restService.recipes.index()
  $scope.users = restService.user.index()
  console.log(Auth._currentUser)
  console.log($scope.users)


  #search for recipe
  $scope.searchRecipe = ->
    $scope.recipes = restService.recipes.index(
      search: $scope.search
    )

  $scope.detailsRecipe = (recipe) ->
    console.log(recipe)

  #load the next page
  $scope.loadNextPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter += 1 ;

  #load previouspage
  $scope.loadPreviousPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter -= 1 ;
