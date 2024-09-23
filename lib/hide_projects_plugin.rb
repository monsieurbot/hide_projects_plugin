module HideProjectsPlugin
  class Engine < ::Rails::Engine
    isolate_namespace HideProjectsPlugin

    # Enregistrement des assets du plugin
    initializer 'hide_projects_plugin.assets.precompile' do |app|
      app.config.assets.precompile += %w( hide_projects_plugin/auth_redirect.js )
    end

    # Ajout du chemin des vues du plugin
    initializer 'hide_projects_plugin.append_view_paths' do |app|
      app.config.paths['app/views'].unshift File.expand_path('../../app/views', __dir__)
    end
  end
end

