module Phaser
  class CursorKeys
    include Native
    alias_native :left, as: Key
    alias_native :right, as: Key
    alias_native :up, as: Key
    alias_native :down, as: Key
  end
end
