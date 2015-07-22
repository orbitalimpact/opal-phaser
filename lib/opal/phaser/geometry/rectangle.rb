module Phaser
  class Rectangle
    include Native

    def initialize(x, y, w, h)
      super `new Phaser.Rectangle(x, y, w, h)`
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
  end
end
