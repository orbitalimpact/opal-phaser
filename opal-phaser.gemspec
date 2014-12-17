# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/phaser/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'opal-phaser'
  s.version      = Opal::Phaser::VERSION
  s.author       = 'George Plymale'
  s.email        = 'george@orbitalimpact.com'
  s.homepage     = 'http://github.com/orbitalimpact/opal-phaser'
  s.summary      = 'Opal access to phaser'
  s.description  = 'Opal DOM library for phaser'

  s.files          = `git ls-files`.split("\n")
  s.executables    = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths  = ['lib']

  s.add_runtime_dependency 'opal', '~> 0.6.0'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rake'
end
