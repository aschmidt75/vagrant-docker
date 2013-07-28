# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-docker/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-docker'
  spec.version       = VagrantDockerCommand::VERSION
  spec.authors       = ['Andreas Schmidt']
  spec.email         = %w(aschmidt75@web.de)
  spec.description   = %q{Vagrant command plugin for docker commands}
  spec.summary       = %q{Run docker commands in a single or multi vm vagrant environment}
  spec.homepage      = 'https://github.com/aschmidt75/vagrant-docker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

end

