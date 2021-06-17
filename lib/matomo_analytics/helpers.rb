module MatomoAnalytics
  module Helpers
    def matomo_tracking_tag
      config = MatomoAnalytics.configuration
      return if config.disabled?

      render({
        template: "matomo_analytics/matomo_tracking_tag",
        locals: {url: config.url, id_site: config.id_site}
      })
    end
  end
end
