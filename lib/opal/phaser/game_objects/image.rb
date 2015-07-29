require 'opal/phaser/core/anchor'

module Phaser
  class Image < PIXI::Sprite
    include Native

    alias_native :input
    alias_native :name
    alias_native :kill
  end
end