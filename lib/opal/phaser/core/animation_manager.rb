module Phaser
  class AnimationManager
    include Native

    alias_native :add
    alias_native :stop
    alias_native :play
  end
end