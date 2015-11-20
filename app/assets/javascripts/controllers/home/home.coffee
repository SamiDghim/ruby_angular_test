@cooking.controller 'homeCtrl', ($scope,Recipe) ->
  $scope.recipes = Recipe.recipes.index()
 #search for
  $scope.searchRecipe = ->
    $scope.recipes = Recipe.recipes.index(
      search: $scope.search
    )

  #$scope.detailsRecipe = ->

  $scope.addRecipe = ->
    recipe = Recipe.recipes.create($scope.newRecipe)
    $scope.newRecipe = {}




