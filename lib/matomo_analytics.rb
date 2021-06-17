require File.join(File.dirname(__FILE__), 'matomo_analytics', 'configuration')

module MatomoAnalytics
  require 'matomo_analytics/engine' if defined?(Rails)

  class <<self
    attr_writer :configuration

    def configuration
      @configuration ||= MatomoAnalytics::Configuration.new
    end
  end
end
