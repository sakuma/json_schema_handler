# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_schema_handler/version'

Gem::Specification.new do |spec|
  spec.name          = "json_schema_handler"
  spec.version       = JsonSchemaHandler::VERSION
  spec.authors       = ["Naohiro Sakuma"]
  spec.email         = ["nao.bear@gmail.com"]
  spec.summary       = %q{WebAPI generator by JSON Schema}
  spec.description   = %q{WebAPI generator by JSON Schema}
  spec.homepage      = "https://github.com/sakuma/json_schema_handler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails",     [">= 3.0", "< 4.2"]
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails"
end
