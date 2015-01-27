module Phaser
  class GameObjectFactory
    def sprite
      Sprite.new
    end
    
    def group
      Group.new
    end
    
    def text
      Text.new
    end
    
    def tween
      Tween.new
    end
  end
end