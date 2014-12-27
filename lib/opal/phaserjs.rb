if RUBY_ENGINE == 'opal'
  require 'opal/phaserjs/core'
  require 'opal/phaserjs/physics'
else
  require 'opal'
  require 'opal/phaserjs/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
