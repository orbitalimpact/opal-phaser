require 'opal/phaser/core/anchor'

class PIXI::Sprite
  include Native
  
  alias_native :x
  alias_native :y
  alias_native :x=
  alias_native :y=
  alias_native :z
  alias_native :z=
  
  alias_native :height
  alias_native :width
  
  alias_native :scale
  alias_native :visible=
  
  alias_native :kill
  alias_native :destroy
  
  alias_native :load_texture, :loadTexture
  
  alias_native :anchor, :anchor, as: Phaser::Anchor
  
  def crop(rect)
    `#@native.crop(#{rect.to_n})`
  end
  
  def smoothed=(bool)
    `#@native.smoothed = bool`
  end
end
