require "matomo_analytics/helpers"

class HelpersDouble
  include MatomoAnalytics::Helpers
end

describe MatomoAnalytics::Helpers do
  describe "#matomo_tracking_tag" do
    before(:each) do
      @config = double("Configuration").as_null_object
      @double = HelpersDouble.new
    end

    context "disabled" do
      it 'should return nil if disabled' do
        allow(@config).to receive(:disabled?).and_return true
        allow(MatomoAnalytics).to receive(:configuration).and_return(@config)
        expect(@double.matomo_tracking_tag).to be_nil
      end
    end

    context "enabled" do
      before(:each) do
        allow(@config).to receive(:disabled?).and_return false
      end

      it 'should render' do
        allow(MatomoAnalytics).to receive(:configuration).and_return(@config)
        expect(@double).to receive(:render)
        @double.matomo_tracking_tag
      end

      it 'should use template matomo_tracking_tag' do
        allow(MatomoAnalytics).to receive(:configuration).and_return(@config)

        expect(@double).to receive(:render).with(hash_including(template: 'matomo_analytics/matomo_tracking_tag'))
        @double.matomo_tracking_tag
      end
    end
  end
end
