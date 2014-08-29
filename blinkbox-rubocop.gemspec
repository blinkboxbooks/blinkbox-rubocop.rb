# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "blinkbox/rubocop"

Gem::Specification.new do |spec|
  spec.name          = "blinkbox-rubocop"
  spec.version       = File.read("VERSION") rescue "0.0.0"
  spec.authors       = ["Muz"]
  spec.email         = ["muz@blinkbox.com"]
  spec.summary       = %q{Blinkbox wrappers and guff for Rubocop}
  spec.description   = %q{Automagic management of Rubocop config, custom cops, and execution}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "0.24.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
