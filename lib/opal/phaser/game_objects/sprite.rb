require 'opal/phaser/physics/physics'
require 'opal/phaser/core/anchor'
require 'opal/phaser/animation/animation_manager'
require 'opal/phaser/game_objects/events'

module Phaser
  class Sprite
    include Native

    alias_native :key
    alias_native :scale
    alias_native :bounce

    alias_native :kill
    alias_native :destroy
    alias_native :play

    alias_native :visible=
    alias_native :exists=
    alias_native :alive=
    alias_native :frame=

    alias_native :z
    alias_native :z=
    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :width
    alias_native :height
    alias_native :right

    def input_enabled=(bool)
      `#@native.inputEnabled = bool`
    end

    def smoothed=(bool)
      `#@native.smoothed = bool`
    end

    def frame_name=(name)
      `#@native.frameName = name`
    end

    alias_native :load_texture, :loadTexture

    alias_native :body,       :body,       as: Physics::Arcade::Body
    alias_native :anchor,     :anchor,     as: Anchor
    alias_native :animations, :animations, as: AnimationManager
    alias_native :events,     :events,     as: Events
  end
end
