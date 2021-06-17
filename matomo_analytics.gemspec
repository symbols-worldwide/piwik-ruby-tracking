spec = Gem::Specification.new do |s|
  s.name              = 'matomo_analytics'
  s.version           = '2.0.0'
  s.date              = Time.now.strftime "%Y-%m-%d"
  s.author            = 'Fabian Becker'
  s.email             = 'halfdan@xnorfz.de'
  s.homepage          = 'https://github.com/halfdan/piwik-ruby-tracking/'
  s.summary           = "[Rails] Easily include Matomo tracking in your Rails application."

  s.description = <<-DESC
    The matomo_analytics gem provides an easy way to include Matomo into your application.
    By default it will output the synchronous matomo tracking code for every page
    (given that it is configured correctly)
  DESC

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', '>= 3.0.0'
  s.add_dependency 'actionpack'
  s.add_dependency 'activesupport'

  s.add_development_dependency "rspec", "~> 3.5.0"
  s.add_development_dependency "rake"
end
