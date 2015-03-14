module Phaser
  class World
    include Native
    
    alias_native :width
    alias_native :height
    
    alias_native :x_center, :centerX
    alias_native :y_center, :centerY
  end
end