require 'opal/phaser/geometry/point'
module Phaser
  class Pointer
    include Native

    alias_native :down?,  :isDown
    alias_native :up?,    :isUp

    alias_native :target_object, :targetObject

    alias_native :reset

    alias_native :position, :position, as: Point

    native_accessor_alias :world_x, :worldX
    native_accessor_alias :world_y, :worldY
    alias_native :x
    alias_native :y
  end
end
