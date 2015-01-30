module Phaser
  class Sprite
    def initialize(game, x, y, key, frame)
      @native = `new Phaser.Sprite(game, x, y, key, frame)`
    end

    alias_native :anchor,        :anchor
    alias_native :body,          :body
    alias_native :events,        :events
    alias_native :input_enable,  :inputEnabled

    def animations
      @animations ||= AnimationManager.new(self)
    end
  end
end