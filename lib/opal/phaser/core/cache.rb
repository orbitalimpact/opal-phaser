module Phaser
  class Cache
    def initialize (game)
      @game = game.to_n
      @native = `#@native_game.cache`
    end
  end
end