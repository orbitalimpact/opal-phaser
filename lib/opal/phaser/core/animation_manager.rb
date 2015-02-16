module Phaser
  # The Animation Manager is used to add, play and update Phaser Animations. Any Game Object such as Phaser.
  # Sprite that supports animation contains a single AnimationManager instance.
  #
  # @see http://docs.phaser.io/Phaser.AnimationManager.html

  class AnimationManager
    include Native

    def initialize(sprite)
      @game   = `sprite.game`
      @sprite = sprite

      @native = `new Phaser.AnimationManager(#@sprite)`
    end

    # Adds a new animation under the given key. Optionally set the frames, frame rate and loop.
    # Animations added in this way are played back with the play function.
    #
    # @param name [String] - The unique (within this Sprite) name for the animation, i.e. "run", "fire", "walk".
    # @param frames [Array] - An array of numbers/strings that correspond to the frames to add to this animation and in which order. e.g. [1, 2, 3] or ['run0', 'run1', run2]). If null then all frames will be used.
    # @param frame_rate [Integer] - The speed at which the animation should play. The speed is given in frames per second.
    # @param _loop [True, False] - Whether or not the animation is looped or just plays once.
    # @param use_numeric_index [True, False] - Are the given frames using numeric indexes (default) or strings?
    #
    # @return [Phaser.Animation] The Animation object that was created.
    def add(name, frames = [], frame_rate = 60, _loop = false, use_numeric_index = true)
      `#@native._outputFrames.length = 0`
      `#@native._frameData.getFrameIndexes(frames, use_numeric_index, #@native._outputFrames)`

      animation = Animation.new(@game, @sprite, name, `#@native._frameData`, `#@native._outputFrames`, frame_rate, _loop)

      `#@native._anims[name] = animation`
      `#@native.currentAnim = #@native._anims[name]`
      `#@native.currentFrame = #@native.currentAnim.currentFrame`

      `#@native._anims[name]`
    end
  end
end