require 'opal/phaser/animation/animation'
module Phaser
  class AnimationManager
    include Native

    alias_native :add, :add, as: Animation
    alias_native :stop
    alias_native :play
  end
end