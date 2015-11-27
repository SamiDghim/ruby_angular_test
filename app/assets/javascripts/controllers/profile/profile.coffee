@cooking.controller 'profileCtrl', ($scope ,restService,Auth,$location) ->

  Auth.currentUser().then  ((user) ->
    $scope.isReadonly = true;
    #return the recipes create by logged user
    $scope.userRecipe = restService.recipes.index(user_id: user.id)
    #function to add recipe for logged user
    $scope.addRecipe = ->
      $scope.newRecipe.user_id= user.id
      recipe = restService.recipes.create($scope.newRecipe)
      $scope.newRecipe = {}
      $location.path 'profile'
  ),(error) -> #if user not logged , return the login page
    $location.path 'login'

