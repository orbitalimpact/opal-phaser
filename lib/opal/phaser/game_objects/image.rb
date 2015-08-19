require 'opal/phaser/core/anchor'
require 'opal/phaser/game_objects/events'

module Phaser
  class Image < PIXI::Sprite
    include Native

    alias_native :input
    alias_native :name
    alias_native :kill

    alias_native :smoothed=

    def input_enabled=(bool)
      `#@native.inputEnabled = bool`
    end

    alias_native :load_texture, :loadTexture
    alias_native :events,       :events,    as: Events
  end
end