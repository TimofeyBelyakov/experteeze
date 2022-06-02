require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Experteeze
  class Application < Rails::Application
    config.load_defaults 7.0
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [:en]
    config.i18n.enforce_available_locales = true
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.assets.enabled = true
  end
end
