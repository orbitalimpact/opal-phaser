module Phaser
  class State
    attr_writer :game
    def initialize(game = nil, &block)
      @game    = game
      @native  = %x{ new Phaser.State() }

      @preload = proc {}
      @create  = proc {}
      @update  = proc {}
      @render  = proc {}

      if block_given?
        block.call(@game)
      end
    end


    def preload(&block)
      @preload = proc { block.call(@game) }
    end

    def create(&block)
      @create = proc { block.call(@game) }
    end

    def update(&block)
      @update = proc { block.call(@game) }
    end

    def render(&block)
      @render = proc { block.call(@game) }
    end

    def to_n
      %x{
        var obj = { preload: #@preload, create: #@create, update: #@update,
                    render: #@render }
      }

      return %x{ obj }
    end
  end
end
