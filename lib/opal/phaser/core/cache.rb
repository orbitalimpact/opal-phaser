module Phaser
  class Cache
    def initialize (game)
      _native = `new Phaser.Cache(game)`
      super(_native)
    end
  end
end