module Phaser
  class Image
    def initialize (game, x, y, key)
      @game = game.to_n
      @native = `new Phaser.Image(#{@game}, x, y, key)`
    end

    alias_native :scale, :scale
  end
end