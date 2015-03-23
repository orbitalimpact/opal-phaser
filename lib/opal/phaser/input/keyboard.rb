module Phaser
  class Keyboard
    include Native
    
    alias_native :create_cursor_keys, :createCursorKeys
  end
end