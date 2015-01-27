module Phaser
  class Sprite
    def anchor
      %x{ new PIXI.Point() }
    end
    
    def animations
      AnimationManager.new
    end
    
    def body
      %x{ Phaser.Sprite.body }
    end
    
    def inputEnabled
      %x{ Phaser.Sprite.inputEnabled }
    end
    
    def events
      %x{ Phaser.Events.new }
    end
  end
end