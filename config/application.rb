require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TwitterClone
  class Application < Rails::Application
    config.load_defaults 5.1

    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    
    # サーバ容量節約のためデバッグログは使用しない
    config.log_level = :info
  end
end
