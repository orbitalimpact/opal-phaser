module Phaser
  class GameObjectFactory
    def sprite
      Sprite.new
    end
    
    def text
      Text.new
    end
    
    def tween
      Tween.new
    end
  end
end