module Phaser
  class Keyboard
    include Native
    
    SPACEBAR = `Phaser.Keyboard.SPACEBAR`
    LEFT     = `Phaser.Keyboard.LEFT`
    RIGHT    = `Phaser.Keyboard.RIGHT`
    A        = `Phaser.Keyboard.A`
    D        = `Phaser.Keyboard.D`
    
    alias_native :create_cursor_keys, :createCursorKeys
    alias_native :remove_key, :removeKey
    
    alias_native :add_key, :addKey, as: Key
  end
end