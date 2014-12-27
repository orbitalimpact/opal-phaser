if RUBY_ENGINE == 'opal'
  require 'opal/phaserjs/core'
else
  require 'opal'
  require 'opal/phaserjs/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
