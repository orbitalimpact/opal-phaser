module Phaser
  class Image
    include Native
    
    alias_native :x
    alias_native :y
    alias_native :x=
    alias_native :y=
    
    alias_native :scale
    
    def smoothed=(bool)
      `#@native.smoothed = bool`
    end
  end
end