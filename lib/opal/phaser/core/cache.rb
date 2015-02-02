module Phaser
  class Cache
    def initialize (game)
      @game = game.to_n
      @native = %x{ #{@game}.cache }
    end
  end
end