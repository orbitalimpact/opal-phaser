require 'opal/phaser/core/anchor'

module Phaser
  class Image < PIXI::Sprite
    include Native

    alias_native :input
    alias_native :name
    alias_native :kill

    alias_native :smoothed=

    alias_native :load_texture, :loadTexture
  end
end