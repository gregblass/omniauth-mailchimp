# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/mailchimp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', '> 1.9.1'

  gem.authors = ["Steven Karas", "Florian Mhun"]
  gem.email = ["steven.karas@gmail.com", "florian.mhun@gmail.com"]
  gem.description = %q{MailChimp OAuth2 strategy for OmniAuth 1.0}
  gem.summary = %q{MailChimp OAuth2 strategy for OmniAuth 1.0.}
  gem.homepage = "https://github.com/stevenkaras/omniauth-mailchimp"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-mailchimp"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Mailchimp::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2'

  gem.add_development_dependency 'rspec', '~> 2.6.0'
  gem.add_development_dependency 'rake', '< 11.0'

  gem.cert_chain  = ['certs/stevenkaras.pem']
  gem.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

end
