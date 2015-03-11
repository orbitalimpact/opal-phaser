module Phaser
  class GameObjectFactory
    include Native

    alias_native :sprite, :sprite, as: Sprite
    alias_native :group,  :group,  as: Group
    alias_native :text,   :text,   as: Text
    alias_native :tile_sprite, :tileSprite
  end
end