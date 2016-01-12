@cooking.controller 'NavController', ($scope, Auth, $location) ->
  $scope.signedIn = Auth.isAuthenticated
  $scope.logout   = Auth.logout

  Auth.currentUser().then  (user) ->
    $scope.user = user

  $scope.$on 'devise:new-registration', (e, user) ->
    $scope.user = user

  $scope.$on 'devise:login', (e, user) ->
    $scope.user = user


  $scope.$on 'devise:logout', (e, user) ->
    $scope.user = {}
    #on logout redirect to home  page
    $location.path 'home'
