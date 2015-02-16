module Phaser
  class Sprite
    include Native
    attr_accessor :native

    def initialize(game, x, y, key, frame)
      @native_game = game.to_n

      @native = `new Phaser.Sprite(#@native_game, x, y, key, frame)`
    end

    alias_native :anchor, :anchor
    alias_native :events, :events
    alias_native :scale,  :scale
    alias_native :body,   :body

    alias_native :visible=
    alias_native :exists=
    alias_native :alive=
    alias_native :z=

    def animations
      @animations ||= AnimationManager.new(self)
    end
  end
end
