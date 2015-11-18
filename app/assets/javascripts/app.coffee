# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@cooking = angular.module( 'cookingRecipes', ['Devise', 'ngRoute','ngResource', 'templates'] )

@cooking.factory 'Recipe', ['$resource', ($resource) ->
  $resource('/recipes/:id.json', {id: '@id'}, {update: {method: 'PUT'}})
]

