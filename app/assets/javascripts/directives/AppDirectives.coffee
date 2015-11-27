@cooking.directive "validPasswordC", ->
  require: "ngModel"
  scope:
    reference: "=validPasswordC"

  link: (scope, elm, attrs, ctrl) ->
    ctrl.$parsers.unshift (viewValue, $scope) ->
      noMatch = viewValue isnt scope.reference
      ctrl.$setValidity "noMatch", not noMatch
      (if (noMatch) then noMatch else `undefined`)

    scope.$watch "reference", (value) ->
      ctrl.$setValidity "noMatch", value is ctrl.$viewValue