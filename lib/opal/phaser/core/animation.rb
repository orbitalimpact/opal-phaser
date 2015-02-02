module Phaser
    class Animation
      def initialize(game, parent, name, frames, frameRate, whetherToLoop, whetherToStopAtEnd)
        `new Phaser.Animation(#{game.to_n}, parent, name, frames, frameRate, whetherToLoop, whetherToStopAtEnd)`
      end
    end
end