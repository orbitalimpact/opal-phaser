require 'opal/phaser/game_objects/sprite'
require 'opal/phaser/core/group'
require 'opal/phaser/game_objects/text'
require 'opal/phaser/game_objects/image'
require 'opal/phaser/game_objects/bitmap_data'
require 'opal/phaser/tween/tween'
require 'opal/phaser/game_objects/tile_sprite'
require 'opal/phaser/game_objects/button'
require 'opal/phaser/sound/sound'
require 'opal/phaser/game_objects/graphics'
require 'opal/phaser/game_objects/emitter'
require 'opal/phaser/game_objects/rope'

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
    alias_native :button,      :button,     as: Button
    alias_native :audio,       :audio,      as: Sound
    alias_native :graphics,    :graphics,   as: Graphics
    alias_native :emitter,     :emitter,    as: Emitter
    alias_native :rope,        :rope,       as: Rope
    alias_native :bitmap_text, :bitmapText
  end
end
