# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogeify/version'

Gem::Specification.new do |spec|
  spec.name          = "dogeify"
  spec.version       = Dogeify::VERSION
  spec.authors       = ["mghadley"]
  spec.email         = ["matthew.g.hadley@gmail.com"]

  spec.summary       = %q{Gem to dogeify english. Creating as part of a tutorial.}
  spec.homepage      = "https://github.com/mghadley/doge"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'engtagger'
end
