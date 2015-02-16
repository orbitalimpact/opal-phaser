module Phaser

  # An Animation instance contains a single animation and the controls to play it.
  # It is created by the AnimationManager, consists of Animation.Frame objects and belongs to a single Game Object such as a Sprite.
  #
  # @see http://docs.phaser.io/Phaser.Animation.html
  class Animation
    include Native

    # @param game [Phaser.Game] A reference to the currently running game.
    # @param parent [Phaser.Sprite] A reference to the owner of this Animation.
    # @param name [String] The unique name for this animation, used in playback commands.
    # @param frame_data [Phaser.FrameData] The FrameData object that contains all frames used by this Animation.
    # @param frames [Array<Integer>, Array<String>] An array of numbers or strings indicating which frames to play in which order.
    # @param frame_rate [Integer] [frameRate=60] The speed at which the animation should play. The speed is given in frames per second.
    # @param loop [True, False] [loop=false] Whether or not the animation is looped or just plays once.
    def initialize(game, parent, name, frameData, frames, frameRate = 60, _loop = false)
      @native_game = game.to_n
      @native = `new Phaser.Animation(#@native_game, parent, name, frameData, frames, frameRate, _loop)`
    end
  end
end