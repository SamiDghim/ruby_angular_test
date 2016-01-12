@cooking.config ( $routeProvider ) ->

  $routeProvider

  .when "/login",
    controller:  'AuthController'
    templateUrl: 'assets/templates/auth/_login.html'

  .when "/register",
    controller:  'AuthController'
    templateUrl: 'assets/templates/auth/_register.html'
  .when "/profile",
    controller: 'ProfileController'
    templateUrl: 'assets/templates/profile/profile.html'
  .when "/recipe/add",
    controller: 'ProfileController'
    templateUrl: 'assets/templates/recipe/add.html'
  .when "/recipe/image",
    controller: 'ProfileController'
    templateUrl: 'assets/templates/recipe/photo.html'
  .when "/recipe/detail",
    controller: 'ProfileController'
    templateUrl: 'assets/templates/recipe/detail.html'
  .when "/recipe/:id/edit",
    controller: 'ProfileController'
    templateUrl: 'assets/templates/recipe/edit.html'
  .when "/home",
      templateUrl: 'assets/templates/home/index.html'

  .otherwise redirectTo: "/home"
