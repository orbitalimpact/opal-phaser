module Phaser
  class Key
    include Native
    
    alias_native :on_down, :onDown, as: Signal
    alias_native :down?, :isDown
  end
end