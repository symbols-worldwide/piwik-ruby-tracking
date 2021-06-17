# MatomoAnalytics
require 'active_support'

module MatomoAnalytics

  class Matomo < Rails::Engine
    engine_name :matomo_analytics

    paths["app/views"]

    generators do
      load "generators/matomo_analytics.rb"
    end

    initializer "matomo_analytics.init", :before => :load_config_initializers do
      require "matomo_analytics/helpers"
      load "matomo_analytics/init.rb"
    end
  end
end
