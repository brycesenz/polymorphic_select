# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polymorphic_select/version'

Gem::Specification.new do |spec|
  spec.name          = "polymorphic_select"
  spec.version       = PolymorphicSelect::VERSION
  spec.authors       = ["brycesenz"]
  spec.email         = ["bryce.senz@gmail.com"]
  spec.description   = %q{Formhelper for selecting polymorphic associations from a collection}
  spec.summary       = %q{Formhelper for selecting polymorphic associations from a collection}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
