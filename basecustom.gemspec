$:.push File.expand_path("../lib", __FILE__)
require "basecustom/version"

Gem::Specification.new do |s|
  s.name        = 'basecustom'
  s.version     = BaseCustom::VERSION
  s.licenses    = ['MIT']
  s.summary     = "Define your own numeric base!"
  s.description = "Define your own numeric base!  Highly advanced and ultimately simple!"
  s.authors     = ["Daniel P. Clark"]
  s.email       = "6ftdan@gmail.com"
  s.files       = ['lib/basecustom/version.rb', 'lib/basecustom.rb', 'README.md', 'LICENSE', 'test/bc_test.rb']
  s.homepage    = 'https://github.com/danielpclark/BaseCustom'
  s.platform    = 'ruby'
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 1.8'
end
