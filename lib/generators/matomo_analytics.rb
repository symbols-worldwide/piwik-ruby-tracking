module MatomoAnalytics
  module Generators
    class Base < Rails::Generators::NamedBase
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'matomo_analytics', generator_name, 'templates'))
    end
  end
end
