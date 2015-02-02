module Phaser
  class Image
    def initialize (game, x, y, key)
      @native = `new Phaser.Image(#{game.to_n}, x, y, key)`
    end

    alias_native :scale, :scale
  end
end