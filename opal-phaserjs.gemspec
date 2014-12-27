# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/phaser/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'opal-phaserjs'
  s.version      = Opal::Phaser::VERSION
  s.authors      = ['George Plymale', 'Gabriel Rios']
  s.email        = ['george@orbitalimpact.com', 'gabrielfalcaorios@gmail.com']
  s.homepage     = 'http://github.com/orbitalimpact/opal-phaserjs'
  s.summary      = 'Opal access to phaser'
  s.description  = 'Phaser library for opal'

  s.files          = `git ls-files`.split("\n")
  s.executables    = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths  = ['lib']

  s.add_runtime_dependency 'opal', '~> 0.6.0'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rake'
end
