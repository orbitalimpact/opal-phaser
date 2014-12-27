module Phaser
  AUTO = %x{ Phaser.AUTO }

  class Game
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
    end
  end

end
