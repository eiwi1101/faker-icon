# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/icon/version'

Gem::Specification.new do |spec|
  spec.name          = "faker-icon"
  spec.version       = Faker::Icon::VERSION
  spec.authors       = ["William Eisert"]
  spec.email         = ["weisert@eisertdev.com"]

  spec.summary       = %q{Extension to Faker gem to add FontAwesome Icon randomizer.}
  spec.homepage      = "https://github.com/eiwi1101/faker-icon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "faker"
  spec.add_dependency "font-awesome-sass"
end
