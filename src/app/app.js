angular
  .module('app')
  .config(function config($stateProvider, $urlRouterProvider) {

    $stateProvider
      .state('otherwise', {
        url: '/otherwise',
        onEnter: function ($state) {
          $state.go('home');
        }
      });

    $urlRouterProvider.otherwise('/otherwise');

  })
  .run(function run() {
    


  })
  .controller('appCtrl', function controller() {

    

  });
