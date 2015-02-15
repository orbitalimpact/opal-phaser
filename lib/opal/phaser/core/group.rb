module Phaser
  class Group
    def self.new(game, parent, name, addToStage, enableBody, physicsBodyType)
      @game        = game
      @native_game = game.to_n

      Native(`new Phaser.Group(#{@native_game}, parent, name, addToStage, enableBody, physicsBodyType)`)
    end
  end
end