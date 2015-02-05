module Phaser
  class Sprite
    def initialize(game, x, y, key, frame)
      @game = game.to_n
      @native = `new Phaser.Sprite(#{@game}, x, y, key, frame)`
    end

    alias_native :anchor,        :anchor
    alias_native :body,          :body
    alias_native :events,        :events
    

    def input_enable=
      `self["native"].inputEnabled`
    end
    
    def scale
      _native = `new PIXI.Point(1, 1)`
      
      def set_to (x, y)
        `_native.setTo(x, y)`
      end
      
      _native
    end
    
    def animations
      @animations ||= AnimationManager.new(self)
    end
  end
end