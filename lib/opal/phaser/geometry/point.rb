module Phaser
  class Point
    include Native

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
  end
end
