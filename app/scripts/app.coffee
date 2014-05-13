'use strict'

angular
  .module('taarifaWaterpointsApp', [
    'ngResource',
    'ngRoute',
    'leaflet-directive',
    'dynform'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MapCtrl'
      .when '/waterpoints/edit/:id',
        templateUrl: 'views/edit.html'
        controller: 'WaterpointEditCtrl'
      .when '/waterpoints/new',
        templateUrl: 'views/edit.html'
        controller: 'WaterpointCreateCtrl'
      .otherwise
        redirectTo: '/'

