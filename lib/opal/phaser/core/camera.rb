module Phaser
  class Camera
    include Native

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=

    alias_native :follow
    alias_native :deadzone, as: Phaser::Rectangle
    def deadzone=(zone)
      `#@native.deadzone = #{zone.to_n}`
    end
  end
end
