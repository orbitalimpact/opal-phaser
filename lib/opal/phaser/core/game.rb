require 'native'
module Phaser
  AUTO = %x{ Phaser.AUTO }
  WEBGL = %x{ Phaser.WEBGL }
  CANVAS = %x{ Phaser.CANVAS }

  class Game
    include ::Native
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

      _native = %x{
        new Phaser.Game(width, height, renderer, parent, #{state.to_n}, transparent,
                        antialias, physics)
      }
      super(_native)
    end

    alias_native :load, :load
    alias_native :add, :add
    alias_native :world, :world
    alias_native :physics, :physics
    alias_native :input, :input

  end

end
