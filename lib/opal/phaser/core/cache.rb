module Phaser
  class Cache
    def initialize (game)
      @native = %x{ #{game.to_n}.cache }
    end
  end
end