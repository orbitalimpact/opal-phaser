module Phaser
  class Image
    def initialize (game, x, y, key)
      `new Phaser.Image(game, x, y, key)`
    end
    
    def scale
      %x{ Phaser.Image.scale }
    end
  end
end