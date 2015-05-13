require 'opal/phaser/core/signal'

module Phaser
  class Events
    include Native

    alias_native :on_input_down, :onInputDown, as: Signal
  end
end