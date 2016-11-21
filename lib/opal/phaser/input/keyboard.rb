require 'opal/phaser/input/key'
require 'opal/phaser/input/cursor_keys'
module Phaser
  class Keyboard
    include Native

    SPACEBAR = `Phaser.Keyboard.SPACEBAR`
    LEFT     = `Phaser.Keyboard.LEFT`
    RIGHT    = `Phaser.Keyboard.RIGHT`
    A        = `Phaser.Keyboard.A`
    D        = `Phaser.Keyboard.D`
    ESC      = `Phaser.Keyboard.ESC`

    alias_native :create_cursor_keys, :createCursorKeys
    alias_native :remove_key, :removeKey

    alias_native :add_key, :addKey, as: Key

    alias_native :down?, :isDown

    alias_native :create_cursor_keys, :createCursorKeys, as: CursorKeys
    def on_down_callback=(callback)
      `#@native.onDownCallback = #{callback.to_n}`
    end
  end
end
