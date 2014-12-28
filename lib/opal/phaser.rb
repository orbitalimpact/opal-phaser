if RUBY_ENGINE == 'opal'
  require 'opal/phaser/core'
else
  require 'opal'
  require 'opal/phaser/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
