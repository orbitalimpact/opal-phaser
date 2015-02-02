module Phaser
    class Animation
      def initialize(game, parent, name, frames, frameRate, whetherToLoop, whetherToStopAtEnd)
        @game = game.to_n
        `new Phaser.Animation(#{@game}, parent, name, frames, frameRate, whetherToLoop, whetherToStopAtEnd)`
      end
    end
end