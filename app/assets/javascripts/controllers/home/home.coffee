@cooking.controller 'HomeController', ($scope,$location,restService,Auth) ->
  counter = 1;
  $scope.recipes = restService.recipes.index()
  console.log(Auth._currentUser)

  #search for recipe
  $scope.searchRecipe = ->
    $scope.recipes = restService.recipes.index(
      search: $scope.search
    )

  $scope.detailRecipe = (recipe) ->
    console.log(recipe)
    #$location.path 'recipe/detail'


