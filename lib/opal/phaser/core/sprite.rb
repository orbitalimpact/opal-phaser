module Phaser
  class Sprite
    include Native

    alias_native :anchor
    alias_native :events
    alias_native :scale
    alias_native :body
    alias_native :bounce

    alias_native :visible=
    alias_native :exists=
    alias_native :alive=
    alias_native :z
    alias_native :z=
    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :width

    alias_native :animations, :animations, as: AnimationManager
  end
end
