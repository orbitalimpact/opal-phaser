module Phaser
  class Sprite
    include Native

    alias_native :anchor, :anchor
    alias_native :events, :events
    alias_native :scale,  :scale
    alias_native :body,   :body

    alias_native :visible=
    alias_native :exists=
    alias_native :alive=
    alias_native :z=

    alias_native :animations, :animations, as: AnimationManager
  end
end
