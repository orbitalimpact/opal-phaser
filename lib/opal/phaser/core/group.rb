module Phaser
  class Group
    include ::Native
    def initialize(game, parent, name, addToStage, enableBody, physicsBodyType)
      @game = game
      @native_game = game.to_n
      _native = `new Phaser.Group(#{@native_game}, parent, name, addToStage, enableBody, physicsBodyType)`
      super(_native)
    end

    alias_native :body, :body
    alias_native :enable_body=, :enableBody
    alias_native :enable_body, :enableBody
    
    def create (*args)
      Sprite.new(@game, *args)
    end
  end
end