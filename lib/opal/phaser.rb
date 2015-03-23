if RUBY_ENGINE == 'opal'
  require 'opal/phaser/setup'
  # Require all Phaser API implementation files:
  # Dir["#{File.dirname(__FILE__)}/opal/phaser/**/*.rb"].each { |f| load(f) }

else
  require 'opal'
  require 'opal/phaser/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
