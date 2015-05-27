require 'opal/phaser/game_objects/sprite'
require 'opal/phaser/core/group'
require 'opal/phaser/game_objects/text'
require 'opal/phaser/game_objects/image'
require 'opal/phaser/game_objects/bitmap_data'
require 'opal/phaser/tween/tween'
require 'opal/phaser/game_objects/tile_sprite'

module Phaser
  class GameObjectFactory
    include Native

    alias_native :sprite,      :sprite,     as: Sprite
    alias_native :group,       :group,      as: Group
    alias_native :text,        :text,       as: Text
    alias_native :image,       :image,      as: Image
    alias_native :bitmap_data, :bitmapData, as: BitmapData
    alias_native :tween,       :tween,      as: Tween
    alias_native :tile_sprite, :tileSprite, as: TileSprite
  end
end