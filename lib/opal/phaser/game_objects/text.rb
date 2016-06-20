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
  end
end
