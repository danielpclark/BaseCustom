# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lib/basecustom/version"

spec = Gem::Specification.new do |s|

  # Change these as appropriate
  s.name              = "basecustom"
  s.version           = BaseCustom::VERSION
  s.platform          = Gem::Platform::RUBY
  s.summary           = "Define any base conversion with any identifier for each value."
  s.description       = "Define any base conversion with any identifier for each value."
  s.author            = "Daniel P. Clark / 6ftDan(TM)"
  s.email             = "webmaster@6ftdan.com"
  s.homepage          = "http://www.github.com/danielpclark/basecustom"

  s.has_rdoc          = false
  # You should probably have a README of some kind. Change the filename
  # as appropriate
  s.extra_rdoc_files  = %w(README)
  s.rdoc_options      = %w(--main README)

  # Add any extra files to include in the gem (like your README)
  s.files             = Dir.glob("{lib,test}/**/*") + %w{README LICENSE}
  s.test_file         = "test/test_bc.rb"
  s.require_paths     = ["lib"]
  
  s.licenses          = "The MIT License (MIT)"
  s.post_install_message = "Enjoy BaseCustom! Your now define your own numbering systems."
end
