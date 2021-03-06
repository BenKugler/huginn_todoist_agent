# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "huginn_todoist_agent"
  spec.version       = '0.6.0'
  spec.authors       = ["Stefan Siegl"]
  spec.email         = ["stesie@brokenpipe.de"]

  spec.summary       = %q{Huginn agent to add, query and close items on your Todoist.}
  spec.description   = %q{The Todoist Agents allow to create new as well as query and close existing items on your Todoist.}

  spec.homepage      = "https://github.com/stesie/huginn_todoist_agent"

  spec.license       = "MIT"


  spec.files         = Dir['LICENSE.txt', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir['spec/fixtures/*.json', 'spec/**/*.rb'].reject { |f| f[%r{^spec/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "huginn_agent", '~> 0'
  spec.add_runtime_dependency 'ruby-todoist-api-v7', '~> 1.0'
  spec.add_runtime_dependency "todoist_querynaut", '~> 0.1'
end
