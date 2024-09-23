# plugin-hide-projects
This plugin aims to hide the projects page for unauthenticated users on Fab Manager

<b>Description</b>
Ce plugin pour Fab Manager modifie le comportement par défaut lorsque les utilisateurs non authentifiés tentent d'accéder à la Galerie de Projets. Au lieu de les rediriger vers la page de connexion ou d'afficher un message d'erreur, le plugin ouvre automatiquement la popup de connexion, offrant ainsi une expérience utilisateur plus fluide et cohérente.

<b>Fonctionnalités</b>

Ouverture automatique de la popup de connexion lorsqu'un utilisateur non authentifié clique sur "Galerie de projets".
Accès normal à la Galerie de Projets pour les utilisateurs authentifiés.
Redirection automatique vers la Galerie de Projets après une connexion réussie depuis la popup.
Isolation du code personnalisé grâce à l'utilisation d'un plugin, facilitant les mises à jour futures de Fab Manager.

<b>Prérequis</b>

Fab Manager installé et fonctionnel.
Connaissances de base en développement Ruby on Rails et AngularJS.
Accès au code source de votre instance Fab Manager pour ajouter le plugin.
