module Phaser
  class Rope
    include Native
    # This is bad wrapper and would be nice to make it better
    native_accessor :updateAnimation
    alias_native :points
  end
end
