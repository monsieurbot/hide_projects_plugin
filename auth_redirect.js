angular.module('application')
  .run(['$rootScope', '$state', 'AuthService', function ($rootScope, $state, AuthService) {
    $rootScope.$on('$stateChangeStart', function (event, toState) {
      if (toState.name === 'app.public.projects_list' && !AuthService.isAuthenticated()) {
        event.preventDefault(); // Empêche la navigation vers la page des projets
        $rootScope.login(event); // Ouvre la popup de connexion
      }
    });
  }]);
