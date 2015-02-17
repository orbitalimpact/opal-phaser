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
    alias_native :physics_body_type, :physicsBodyType
    alias_native :enable_body_debug, :enableBodyDebug
    alias_native :add_child, :addChild
    alias_native :children

    alias_native :enable_body?, :enableBody

    def enable_body=(bool)
      `#@native.enableBody = bool`
    end

    def create(x, y, key, frame, exists = true)
      child = Sprite.new(@game, x, y, key, frame)

      if enable_body?
        @game.physics.enable(child, physics_body_type, enable_body_debug)
      end

      child.exists  = exists
      child.visible = exists
      child.alive   = exists

      add_child(child.native)

      child.z = children.length

      if child.events
        `#{child.native}.events.onAddedToGroup$dispatch(#{child}, #@native);`
      end

      cursor = child if cursor.nil?

      child
    end
  end
end