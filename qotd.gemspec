# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qotd/version'

Gem::Specification.new do |spec|
  spec.name          = "qotd"
  spec.version       = Qotd::VERSION
  spec.authors       = ["jfjhh"]
  spec.email         = ["alex.striff1@gmail.com"]
  spec.summary       = "Displays a quote to the terminal or web."
  spec.description   = "Gets a random quote from a file and displays it to the terminal or in a Sinatra Application"
  spec.homepage      = "https://github.com/jfjhh/qotd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 1.4"
  spec.add_development_dependency "sinatra", "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"
end
