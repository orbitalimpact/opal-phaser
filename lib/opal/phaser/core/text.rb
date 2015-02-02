module Phaser
  class Text
    def initialize (game, x, y, text, style)
      `new Phaser.Text(#{game.to_n}, x, y, text, style)`
    end
  end
end