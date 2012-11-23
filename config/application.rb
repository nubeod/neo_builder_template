require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

if defined?(Bundler)
Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Nubcycling
class Application < Rails::Application
config.autoload_paths += %W(#{config.root}/lib)
config.encoding = "utf-8"
config.filter_parameters += [:password]
config.assets.enabled = true
config.assets.version = '1.0'
config.assets.initialize_on_precompile = false
end
end
APP_NAME = 'nubcycling'
DBNAME = 'nubeod_production'
DBUSER = 'batmin'
DBPASS = 'nantes3955'
