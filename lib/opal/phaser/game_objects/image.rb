require 'opal/phaser/core/anchor'

require 'opal/phaser/pixi/sprite'

module Phaser
  class Image < PIXI::Sprite
    include Native

    alias_native :input
    alias_native :name
  end
end