require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Tenantrental
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators do |g|
      g.assets false          # CSS, JavaScriptファイルは生成しない
      g.test_framework false  # testファイルは生成しない
      g.test_framework :rspec,
          controller_specs: false,
          view_specs: false,
          helper_specs: false,
          routing_specs: false
      end
  end
end
