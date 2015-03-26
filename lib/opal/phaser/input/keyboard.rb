module Phaser
  class Keyboard
    include Native
    
    SPACEBAR = `Phaser.Keyboard.SPACEBAR`
    
    alias_native :create_cursor_keys, :createCursorKeys
    
    alias_native :add_key, :addKey, as: Key
  end
end