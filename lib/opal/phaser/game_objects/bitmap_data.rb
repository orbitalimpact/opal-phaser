module Phaser
  class BitmapData
    include Native
    
    alias_native :draw
    alias_native :canvas
  end
end