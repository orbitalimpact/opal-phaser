module Phaser
  class Image
    def initialize (game, x, y, key)
      `new Phaser.Image(game, x, y, key)`
    end
    
    alias_native :scale, :scale
  end
end