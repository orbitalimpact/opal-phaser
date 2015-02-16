module Phaser
  class GameObjectFactory
    def initialize(game)
      @game   = game
      @native_game = game.to_n
      @native = `#@native_game.add`
    end

    def sprite(x, y, key, frame, group = `#@native_game.world`)
      `group.create(x, y, key, frame)`
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