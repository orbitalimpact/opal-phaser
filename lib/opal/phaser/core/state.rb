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
        instance_eval(&block)
      end
    end


    def preload(&block)
      puts "State preload"
      @preload = block
    end

    def create(&block)
      @create = block
    end

    def update(&block)
      @update = block
    end

    def render(&block)
      @render = block
    end

    def to_n
      %x{
        var obj = { preload: #@preload, create: #@create }
      }

      return %x{ obj }
    end
  end
end
