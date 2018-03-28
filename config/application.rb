require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shine
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

     # the new line added for autoload of lib
    #config.autoload_paths += %W(#{config.root}/lib)

    config.assets.paths << Rails.root.join("vendor",
											"assets",
											"bower_components")
 config.assets.paths << Rails.root.join("vendor",
										 "assets",
										 "bower_components",
										 "bootstrap-sass-official",
										 "assets",
										 "fonts")
 config.assets.precompile << /\.(?:svg|eot|woff|ttf|woff2)\z/

    config.active_record.schema_format = :sql
  end
end
