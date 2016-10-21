require 'opal/phaser/native_helpers'
require 'opal/phaser/animation/animation'

module Phaser
  # Adds, plays and updates animations on Sprite Game Objects.
  class AnimationManager
    include Native

    # @!method initalize(sprite)
    # The Animation Manager is used to add, play and update Phaser Animations.
    # Any Game Object such as Phaser.Sprite that supports animation contains a single AnimationManager instance.
    # @param [Phaser.Sprite] sprite - A reference to the Game Object that owns this AnimationManager.

    # @!attribute sprite
    #   @return [Phaser.Sprite] A reference to the parent Sprite that owns this AnimationManager.
    native_accessor :sprite

    # @!attribute game
    #   @return [Phaser.Game] A reference to the currently running Game.
    native_accessor :game

    # @!attribute current_frame
    # This property is only set once an Animation starts playing. Until that point it remains set as `null`.
    #   @return [Phaser.Frame] The currently displayed Frame of animation, if any.
    native_accessor_alias :current_frame, :currentFrame

    # @!attribute current_anim
    #   @return [Phaser.Animation] The currently displayed animation, if any.
    native_accessor_alias :current_anim, :currentAnim

    # @!attribute update_if_visible
    #   @return [Boolean] Should the animation data continue to update even if the Sprite.visible is set to false.
    native_accessor_alias :update_if_visible, :updateIfVisible

    # @!attribute is_loaded
    #   @return [Boolean] Set to true once animation data has been loaded.
    native_accessor_alias :is_loaded, :isLoaded

    # @!attribute _frame_data
    #   @return [Phaser.FrameData]  A temporary variable for holding the currently playing Animations FrameData.
    #   @!visibility private
    native_accessor_alias :_frame_data, :frameData

    # @!attribute _anims
    #   @return [Object] An internal object that stores all of the Animation instances.
    #   @!visibility private
    native_accessor :_anims

    # @!attribute _outputFrames
    #   @return [Object] An internal object to help avoid garbage collection.
    #   @!visibility private
    native_accessor_alias :_output_frames, :_outputFrames

    ###
    # methods
    #########

    # @!method load_frame_data(frame_data, frame)
    # Loads FrameData into the internal temporary vars and resets the frame index to zero.
    # This is called automatically when a new Sprite is created.
    #   @!visibility private
    # @param frame_data [Phaser.FrameData] The FrameData set to load.
    # @param frame [String, Number] The frame to default to.
    # @return [Boolean] Returns `true` if the frame data was loaded successfully, otherwise `false`
    alias_native :load_frame_data, :loadFrameData

    # @!method copy_frame_data(frame_data, frame)
    # Loads FrameData into the internal temporary vars and resets the frame index to zero.
    # This is called automatically when a new Sprite is created.
    #   @!visibility private
    # @param frame_data[Phaser.FrameData] The FrameData set to load.
    # @param frame [String, Number] The frame to default to.
    # @return [Boolean] Returns `true` if the frame data was loaded successfully, otherwise `false`
    alias_native :copy_frame_data, :copyFrameData

    # @!method add(name, frames = nil, frame_rate = 60, loop = false, use_numeric_index = true)
    # Adds a new animation under the given key. Optionally set the frames, frame rate and loop.
    # Animations added in this way are played back with the play function.
    #
    # @param name [String] name - The unique (within this Sprite) name for the animation, i.e. "run", "fire", "walk".
    # @param frames [Array]  An array of numbers/strings that correspond to the frames to add to this animation and in which order. e.g. [1, 2, 3] or ['run0', 'run1', run2]). If null then all frames will be used.
    # @param frame_rate [Number] The speed at which the animation should play. The speed is given in frames per second.
    # @param loop [Boolean]  Whether or not the animation is looped or just plays once.
    # @param use_numeric_index [Boolean] Are the given frames using numeric indexes (default) or strings?
    # @return [Phaser.Animation] The Animation object that was created.
    alias_native :add, :add, as: Animation

    # @!method validate_frames(frames, use_numeric_index = true)
    # Check whether the frames in the given array are valid and exist.
    # @param frames [Array] An array of frames to be validated.
    # @param use_numeric_index [Boolean] Validate the frames based on their numeric index (true) or string index (false)
    # @return [Boolean] True if all given Frames are valid, otherwise false.
    alias_native :validate_frames, :validateFrames

    # @!method play(name, frame_rate = null, loop = false, kill_on_complete = false)
    # Play an animation based on the given key. The animation should previously have been added via `animations.add`
    # If the requested animation is already playing this request will be ignored.
    # If you need to reset an already running animation do so directly on the Animation object itself.
    # @param name [String] The name of the animation to be played, e.g. "fire", "walk", "jump".
    # @param frame_rate [Number] The framerate to play the animation at. The speed is given in frames per second. If not provided the previously set frame_rate of the Animation is used.
    # @param loop [Boolean] Should the animation be looped after playback. If not provided the previously set loop value of the Animation is used.
    # @param kill_on_complete [Boolean] If set to true when the animation completes (only happens if loop=false) the parent Sprite will be killed.
    # @return [Phaser.Animation] A reference to playing Animation instance.
    alias_native :play, :play, as: Animation

    # @!method stop(name = nil, reset_frame = false)
    # Stop playback of an animation. If a name is given that specific animation is stopped, otherwise the current animation is stopped.
    # The currentAnim property of the AnimationManager is automatically set to the animation given.
    # @param name [String] The name of the animation to be stopped, e.g. "fire". If none is given the currently running animation is stopped.
    # @param reset_frame [Boolean] When the animation is stopped should the currentFrame be set to the first frame of the animation (true) or paused on the last frame displayed (false)
    alias_native :stop

    # @!method update
    # The main update function is called by the Sprites update loop. It's responsible for updating animation frames and firing related events.
    #   @!visibility protected
    # @return [Boolean] True if a new animation frame has been set, otherwise false.
    alias_native :update

    # @!method next(quantity = 1)
    # Advances by the given number of frames in the current animation, taking the loop value into consideration.
    # @param quantity [Number] The number of frames to advance.
    alias_native :quantity

    # @!method previous(quantity = 1)
    # Moves backwards the given number of frames in the current animation, taking the loop value into consideration.
    # @param quantity [Number] The number of frames to move back.
    alias_native :previous

    # @!method get_animation(name)
    # Returns an animation that was previously added by name.
    # @param [String] name - The name of the animation to be returned, e.g. "fire".
    # @return [Phaser.Animation] The Animation instance, if found, otherwise null.
    alias_native :get_animation, :get_animation, as: Animation

    # @!method refresh_frame
    # Refreshes the current frame data back to the parent Sprite and also resets the texture data.
    alias_native :refresh_frame, :refreshFrame

    # @!method destroy
    # Destroys all references this AnimationManager contains.
    # Iterates through the list of animations stored in this manager and calls destroy on each of them.
    alias_native :destroy

    ###
    # constructor properties
    ########################

    # @!attribute [r] frame_data
    #   @return The current animations FrameData.
    native_reader_alias :frame_data, :frameData

    # @!attribute [r] frame_total
    #   @return [Number] The total number of frames in the currently loaded FrameData, or -1 if no FrameData is loaded.
    native_reader_alias :frame_total, :frameTotal

    # @!attribute paused
    #   @return [Boolean] Gets and sets the paused state of the current animation.
    native_accessor :paused

    # @!attribute name
    #   @return [String] Gets the current animation name, if set.
    native_accessor :name

    # @!attribute frame
    #   @return [Number] Gets or sets the current frame index and updates the Texture Cache for display.
    native_accessor :frame

    # @!attribute frame_name
    #   @return [String] frameName - Gets or sets the current frame name and updates the Texture Cache for display.
    native_accessor_alias :frame_name, :frameName
  end
end
