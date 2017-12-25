require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require 'digest/sha2'
require 'securerandom'
require 'rmagick'
require 'jwt'

Bundler.require(*Rails.groups)

module BadSns
  class Application < Rails::Application
    config.load_defaults 5.1
    config.api_only = true
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore, key: '_badsns_session', expire_after: 20.years
  end
end
