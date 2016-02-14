require File.expand_path('../boot', __FILE__)
require 'rails/all'
#require 'pdfkit'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FactoryStatusApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    #rake time:zones:all OFFSET=-8
    config.time_zone = 'Pacific Time (US & Canada)'
    #config.wkhtmltopdf = ('which wkhtmltopdf').chomp
    #config.middleware.use "PDFKit::Middleware", :print_media_type => true
    config.serve_static_assets = true
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.assets.enabled = true

    #Needs to be false on Heroku
    config.assets.initialize_on_precompile = false
    # Can be set to invalidate the whole cache
    config.assets.version = "1.1"

    # Serving static assets and setting cache headers 
    # which will be used by cloudfront as well
    config.serve_static_assets = true
    config.static_cache_control = "public, max-age=31536000"
  end
end
