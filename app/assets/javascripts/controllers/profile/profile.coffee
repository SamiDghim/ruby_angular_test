@cooking.controller 'profileCtrl', ($scope,$location ,restService,Auth, $upload) ->

  Auth.currentUser().then  ((user) ->

    $scope.onFileSelect = (files) ->
      i = 0

      while i < files.length
        file = $files[i]
        $scope.upload = $upload.upload(
          url: "images/"
          data: {}
          file: file
        ).success(->
          alert "finished!"
        )
        i++

    $scope.isReadonly = false

    #return the recipes create by logged user
    $scope.userRecipe = restService.recipes.index()

    #function to add recipe for logged user
    $scope.addRecipe = ->
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

    $scope.detailRecipe = (recipe) ->
      console.log(recipe)
      detailRecipe = restService.recipes.show(id: 122)
      $location.path 'recipe/detail'

    $scope.hoveringOver =(value) ->
      $scope.overStar = value;

  ),(error) -> #if user not logged , return the login page
    $location.path 'login'