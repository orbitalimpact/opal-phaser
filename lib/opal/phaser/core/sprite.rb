module Phaser
  class Sprite
    include Native
    attr_accessor :native
    attr_accessor :animations

    def initialize(game, x, y, key, frame)
      @game = game
      @native_game = @game.to_n

      @native     = `new Phaser.Sprite(#@native_game, x, y, key, frame)`
      @animations = AnimationManager.new(@native)
    end

    alias_native :anchor, :anchor
    alias_native :events, :events
    alias_native :scale,  :scale
    alias_native :body,   :body

    alias_native :visible=
    alias_native :exists=
    alias_native :alive=
    alias_native :z=
  end
end
