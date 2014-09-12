require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ClothingShop
  class Application < Rails::Application
    config.autoload_paths += Dir[Rails.root.join('app', 'models', '{**/}')]
    config.autoload_paths << Rails.root.join('db','seeds', 'product')
  end
end
