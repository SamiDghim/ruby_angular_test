@cooking.controller 'ProfileController', ($scope,$location ,restService,Auth, Upload) ->

  Auth.currentUser().then  ((user) ->
    $scope.addImage = -> 
      $scope.upload($scope.image)

    $scope.upload = (file) ->
      Upload.upload(
        url: "/recipes.json"
        method: 'POST'
        data: {image: file}
        )       
    $scope.isReadonly = false

    #return the recipes create by logged user
    $scope.userRecipe = restService.recipes.index()

    #function to add recipe for logged user
    $scope.addRecipe = ->
      #$scope.upload($scope.newRecipe.image)
      recipe = restService.recipes.create($scope.newRecipe)
      console.log(recipe)
      console.log($scope.newRecipe)
      $location.path 'profile'

    #return the list of all recipes
    $scope.ingredients = restService.ingredients.index()

    #function to add new ingredient
    $scope.addIngredient = ->
      $scope.ingredients = restService.ingredients.create($scope.newIngredient)
      $location.path 'recipe/add'

    #function to update recipe
    $scope.editRecipe = ->
      recipe = restService.recipes.update($scope.newRecipe)
      $location.path 'profile'

    $scope.detailRecipe = (id) ->
     # console.log(recipe)
      detailRecipe = restService.recipes.update(id: id)
      console.log(detailRecipe)
      #$location.path 'recipe/detail'
    #delete recipe 
    $scope.deleteRecipe = (id) -> 
      restService.recipes.destroy(id: id)
      $location.path 'profile'

    $scope.hoveringOver =(value) ->
      $scope.overStar = value;
    


  ),(error) -> #if user not logged , return the login page
    $location.path 'login'