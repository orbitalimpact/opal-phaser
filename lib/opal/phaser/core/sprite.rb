module Phaser
  class Sprite
    def self.new(game, x, y, key, frame)
      @game   = game.to_n
      @native = `new Phaser.Sprite(#@game, x, y, key, frame)`
    end
  end
end
