require 'opal/phaser/geometry/point'
module Phaser
  class Text
    include Native

    alias_native :destroy
    alias_native :anchor, :anchor, as: Point

    native_accessor :x
    native_accessor :y
    native_accessor :angle
    native_accessor :fill
    native_accessor :visible
    native_accessor :text

    native_accessor :font, :stroke, :align
    native_accessor_alias :font_size, :fontSize
    native_accessor_alias :font_weight, :fontWeight
    native_accessor_alias :stroke_thickness, :strokeThickness
    native_accessor_alias :fixed_to_camera, :fixedToCamera
    alias_native :events, as: Phaser::Events
    native_accessor :inputEnabled
    alias_native :set_shadow, :setShadow
  end
end
