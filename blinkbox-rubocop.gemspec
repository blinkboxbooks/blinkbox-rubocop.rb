# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "blinkbox-rubocop"
  spec.version       = Blinkbox::Rubocop::VERSION
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

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
