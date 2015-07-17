require 'opal-pixi'
if RUBY_ENGINE == 'opal'
  require 'opal/phaser/setup'

else
  require 'opal'
  require 'opal/phaser/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
