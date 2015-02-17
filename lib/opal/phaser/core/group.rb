module Phaser

  # A Group is a container for DisplayObject including Phaser.Sprite and Phaser.Image.
  #
  # @see http://docs.phaser.io/Group.js.html
  class Group
    include Native
    attr_accessor :native

    # @param game [Phaser.Game] A reference to the currently running game.
    # @param parent [DisplayObject, null] The parent Group (or other DisplayObject) that this group will be added to.
    #   If undefined/unspecified the Group will be added to the Phaser.Game#world
    #   If null the Group will not be added to any parent
    # @param name [String] A name for this group. Not used internally but useful for debugging.
    # @param add_to_stage [True, False] If true this group will be added directly to the Game.Stage instead of Game.World.
    # @param enable_body [True, False] If true all Sprites created with {@link #create} or {@link #createMulitple} will have a physics body created on them. Change the body type with {@link #physicsBodyType}.
    def initialize(game, parent, name, add_to_stage, enable_body, physics_body_type)
      @game = game
      @native_game = game.to_n

      @native = `new Phaser.Group(#@native_game, parent, name, add_to_stage, enable_body, physics_body_type)`
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

    # Used by GameObjectFactory
    def wrap_group(group)
      @native = group
      self
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