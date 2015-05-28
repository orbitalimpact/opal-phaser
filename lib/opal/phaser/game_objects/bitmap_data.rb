module Phaser
  class BitmapData
    include Native

    alias_native :draw
    alias_native :rect
    alias_native :fill
    alias_native :clear
    alias_native :canvas
    alias_native :resize

  end
end