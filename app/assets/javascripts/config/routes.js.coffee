@cooking.config ( $routeProvider ) ->

  $routeProvider

  .when "/login",
    controller:  'authCtrl'
    templateUrl: 'assets/templates/auth/_login.html'

  .when "/register",
    controller:  'authCtrl'
    templateUrl: 'assets/templates/auth/_register.html'
  .when "/profile",
    controller: 'profileCtrl'
    templateUrl: 'assets/templates/profile/profile.html'
  .when "/home",
      templateUrl: 'assets/templates/home/index.html'

  .otherwise redirectTo: "/home"
