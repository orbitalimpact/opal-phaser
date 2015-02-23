module Phaser
  class GameObjectFactory
    include Native

    alias_native :sprite, :sprite, as: Sprite
    alias_native :group,  :group,  as: Group
  end
end