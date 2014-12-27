if RUBY_ENGINE == 'opal'
  require 'opal/phaser/core'
  require 'opal/phaser/physics'
else
  require 'opal'
  require 'opal/phaser/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
