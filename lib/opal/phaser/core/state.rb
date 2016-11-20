require 'pp'
require 'opal/phaser/core/game'
module Phaser
  class State
    include Native
    def initialize(game = nil, &block)
      @native  = `new Phaser.State`
      self.game    = game

      if block_given?
        block.call(@game)
      end
      super(@native)
    end

    def game=(g_)
      @game = g_
      `#@native.game = #@game`
    end

    def game
      @game
    end

    def init(*)
    end

    def preload
    end

    def create
    end

    def update
    end

    def render
    end

    def to_n
      _preload = proc { preload }
      _create = proc { create }
      _update = proc { update }
      _render = proc { render }
      _init = proc {|*args| init(*args) }
      %x{
        var obj = { preload: #{_preload}, create: #{_create}, update: #{_update},
                    render: #{_render}, init: #{_init} }
      }

      return %x{ obj }
    end
  end
end
