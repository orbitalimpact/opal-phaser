require 'native'
module Phaser
  AUTO   = `Phaser.AUTO`
  WEBGL  = `Phaser.WEBGL`
  CANVAS = `Phaser.CANVAS`

  class Game
    include Native

    attr_reader :add

    def initialize(width, height, renderer = Phaser::AUTO,
                  parent = '', state = nil, transparent = false, antialias = true,
                  physics = nil, &block)

      if state
        state.game = self
      else
        state = State.new(self)
      end

      if block_given?
        state.instance_eval(&block)
      end

      @native = %x{
        new Phaser.Game(width, height, renderer, parent, #{state.to_n}, transparent,
                        antialias, physics)
      }

      @add   = GameObjectFactory.new(self)
      @cache = Cache.new(self)
    end

    def to_n
      @native
    end

    alias_native :load, :load
    alias_native :world, :world
    alias_native :stage, :stage
    alias_native :physics, :physics
    alias_native :debug, :debug
    alias_native :input, :input
  end
end
