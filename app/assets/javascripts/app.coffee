# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#Inject ngResource module into Angular application
@cooking = angular.module( 'cookingRecipes', ['Devise', 'ngRoute','ngResource','ngAnimate','ui.bootstrap', 'templates'] )
