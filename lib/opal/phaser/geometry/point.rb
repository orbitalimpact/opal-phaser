module Phaser
  class Point
    include Native

    # When its automatically aliased we just pass the object to super
    def initialize(_x = 0, _y = 0)
      if `typeof(#{_x})` == "object"
        super(_x)
      else
        @native = `new Phaser.Point(#{_x}, #{_y})`
        super(@native)
      end
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :set
    alias_native :setTo, :set_to
  end
end
