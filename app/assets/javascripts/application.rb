module YourAppName
  class Application < Rails::Application
    # ...

    # Ajouter le dossier des plugins à la configuration
    config.paths.add 'plugins', eager_load: true

    # Charger tous les plugins
    config.autoload_paths += Dir["#{Rails.root}/plugins/*/lib"]
    config.eager_load_paths += Dir["#{Rails.root}/plugins/*/lib"]

    # Charger les initialiseurs des plugins
    config.to_prepare do
      Dir.glob(File.join(Rails.root, 'plugins', '*', 'config', 'init.rb')).each do |initializer|
        require initializer
      end
    end

    # ...
  end
end
//= require hide_projects_plugin/hide_projects_plugin
