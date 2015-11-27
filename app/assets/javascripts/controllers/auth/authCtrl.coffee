@cooking.controller 'authCtrl', ($scope, Auth, $location) ->
  $scope.login = ->
    Auth.login($scope.user).then ((user)->
      #on login -> redirect to profile
      $location.path 'profile'
    ),(error) -> #on login fail
      console.log('error : invalid email or password')
      $scope.loginForm.email.$invalid= true;
      $scope.loginForm.password.$invalid= true;


  $scope.register = ->
    Auth.register( $scope.user ).then ->
      $location.path 'home'
