module Phaser
  class Group
    include ::Native
    def initialize(game, parent, name, addToStage, enableBody, physicsBodyType)
      @game = game
      _native = `new Phaser.Group(game, parent, name, addToStage, enableBody, physicsBodyType)`
      super(_native)
    end

    alias_native :enable_body=, :enableBody
    alias_native :enable_body, :enableBody
    alias_native :create
  end
end