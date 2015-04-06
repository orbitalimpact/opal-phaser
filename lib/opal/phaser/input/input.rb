module Phaser
  class Input
    include Native
    
    alias_native :x
    alias_native :y
    
    alias_native :keyboard, :keyboard, as: Keyboard
    
    alias_native :on_down, :onDown, as: Signal
    alias_native :active_pointer, :activePointer
  end
end