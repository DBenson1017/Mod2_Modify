
require 'rspotify'
require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

module Modify
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    Bundler.require(*Rails.groups)
    Dotenv::Railtie.load

    client_id =ENV['CLIENT_ID']
    client_secret = ENV['CLIENT_SECRET']
    RSpotify::authenticate( client_id, client_secret)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
