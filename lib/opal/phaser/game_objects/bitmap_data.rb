module Phaser
  class BitmapData
    include Native

    alias_native :draw
    alias_native :rect
    alias_native :fill
    alias_native :canvas
  end
end