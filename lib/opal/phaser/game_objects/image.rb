module Phaser
  class Image
    include Native

    alias_native :x
    alias_native :y
    alias_native :x=
    alias_native :y=
    alias_native :height
    alias_native :width
    alias_native :input

    alias_native :scale
    alias_native :destroy

    alias_native :load_texture, :loadTexture

    def smoothed=(bool)
      `#@native.smoothed = bool`
    end
  end
end