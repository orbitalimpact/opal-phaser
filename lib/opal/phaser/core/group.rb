module Phaser
  class Group
    def self.new(game, parent, name, addToStage, enableBody, physicsBodyType)
      @game = game
      @native_game = game.to_n

      Native(`new Phaser.Group(#{@native_game}, parent, name, addToStage, enableBody, physicsBodyType)`)
    end

    alias_native :enable_body, :enableBody
    alias_native :enable_body=, :enableBody

    def create(*args)
      Sprite.new(@game, *args)
    end
  end
end