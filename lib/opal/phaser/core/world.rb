require 'opal/phaser/native_helpers'
require 'opal/phaser/geometry/rectangle'

module Phaser
  class World
    include Native

    alias_native :width
    alias_native :height

    alias_native :set_bounds, :setBounds
    alias_native :bounds, :bounds, as: Phaser::Rectangle

    native_reader_alias :center_x, :centerX
    alias_native :x_center, :centerX
    alias_native :y_center, :centerY
    alias_native :random_y, :randomY
    alias_native :random_x, :randomX
  end
end
