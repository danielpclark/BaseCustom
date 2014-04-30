$:.push File.expand_path("../lib", __FILE__)
require "basecustom/version"

Gem::Specification.new do |s|
  s.name        = 'basecustom'
  s.version     = BaseCustom::VERSION
  s.licenses    = ['The MIT License (MIT)']
  s.summary     = "Define your own numberic base!"
  s.description = "Define your own numberic base!  Highly advanced and ultimately simple!"
  s.authors     = ["Daniel P. Clark / 6ftDan(TM)"]
  s.email       = 'webmaster@6ftdan.com'
  s.files       = ['lib/basecustom/version.rb', 'lib/basecustom.rb', 'README.md', 'LICENSE', 'test_bc.rb']
  s.homepage    = 'https://rubygems.org/gems/basecustom'
  s.platform    = 'ruby'
  s.post_install_message = "Create your own number base(s)!"
  s.require_paths = ['lib']
  # s.test_files  = ["test/test_ms.rb"]
end