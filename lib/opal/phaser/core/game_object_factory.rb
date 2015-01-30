module Phaser
  class GameObjectFactory
    def initialize(game)
      @game   = game
      @native = %x{ new Phaser.GameObjectFactory(game) }
    end

    def sprite(*args)
      Sprite.new(@game, *args)
    end

    def group(*args)
      Group.new(@game, *args)
    end

    def image(*args)
      Image.new(@game, *args)
    end

    def text(*args)
      Text.new(@game, *args)
    end

    def tween(*args)
      Tween.new(@game, *args)
    end
  end
end