module Phaser
  class Group
    include Native
    attr_accessor :native

    def initialize(game, parent, name, addToStage, enableBody, physicsBodyType)
      @game = game
      @native_game = game.to_n

      @native = `new Phaser.Group(#@native_game, parent, name, addToStage, enableBody, physicsBodyType)`
    end

    alias_native :cursor

    def enable_body=(bool)
      `#@native.enableBody = bool`
    end

    def create(x, y, key, frame, exists = true)
      child = Sprite.new(@game, x, y, key, frame)

      if `#@native.enableBody`
        @game.physics.enable(child, `#@native.physicsBodyType`, `#@native.enableBodyDebug`)
      end

      child.exists  = exists
      child.visible = exists
      child.alive   = exists

      `#@native.addChild(#{child.native})`

      child.z = `#@native.children.length`

      if child.events
        `#{child.native}.events.onAddedToGroup$dispatch(#{child}, #@native);`
      end

      cursor = child if cursor.nil?

      child
    end
  end
end