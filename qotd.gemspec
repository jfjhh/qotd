# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qotd/version'

Gem::Specification.new do |spec|
  spec.name          = "qotd"
  spec.version       = Qotd::VERSION
  spec.authors       = ["jfjhh"]
  spec.email         = ["alex.striff1@gmail.com"]
  spec.summary       = "Displays a new quote on login to terminal."
  spec.description   = "Gets a random quote from a file and displays it to the standard output."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end