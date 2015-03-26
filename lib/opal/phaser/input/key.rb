module Phaser
  class Key
    include Native
    
    alias_native :on_down, :onDown, as: Signal
  end
end