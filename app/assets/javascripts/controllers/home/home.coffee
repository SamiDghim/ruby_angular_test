@cooking.controller 'homeCtrl', ($scope,Recipe) ->
  $scope.recipes = Recipe.query()
  