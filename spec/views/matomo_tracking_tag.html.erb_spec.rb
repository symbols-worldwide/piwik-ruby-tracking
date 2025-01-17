require "erb"

describe "views/matomo_tracking_tag.html.erb" do
  before(:each) do
    filename = File.join(File.dirname(__FILE__), '..', '..', 'app', 'views', 'matomo_analytics', 'matomo_tracking_tag.html.erb')
    @template = ERB.new(File.read(filename))
  end

  it "should render url" do
    url = "example.com"
    id_site = 1
    expect(@template.result(binding)).to match /\/\/example.com/
  end

  it "should render id_site" do
    url = nil
    id_site = 4
    expect(@template.result(binding)).to match /'setSiteId', 4/
  end
end
