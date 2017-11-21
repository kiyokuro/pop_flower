# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "javascripts", "jquery-easing")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( jqBootstrapValidation.js )
Rails.application.config.assets.precompile += %w( contact_me.js )
Rails.application.config.assets.precompile += %w( freelancer.min.js )
Rails.application.config.assets.precompile += %w( freelancer.css )