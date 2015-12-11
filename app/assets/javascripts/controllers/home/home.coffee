@cooking.controller 'homeCtrl', ($scope,$location,restService,Auth) ->
  counter = 1;
  $scope.recipes = restService.recipes.index()
  console.log(Auth._currentUser)

  #search for recipe
  $scope.searchRecipe = ->
    $scope.recipes = restService.recipes.index(
      search: $scope.search
    )

  #$scope.detailRecipe = (recipe) ->
   # console.log(recipe)

   # console.log(detailRecipe)
    #$location.path 'recipe/detail'


  #load the next page
  $scope.loadNextPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter += 1 ;

  #load previouspage
  $scope.loadPreviousPage  = ->
    $scope.recipes = restService.recipes.index({page: counter})
    counter -= 1 ;
