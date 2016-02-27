require 'opal/phaser/native_helpers'

module Phaser
  # The base Animation object that the Animation Manager creates.
  class Animation
    include Native

    # @!method initialize(game, parent, name, frame_data = 60, frames, frame_rate, loop = false)
    # An Animation instance contains a single animation and the controls to play it.
    # It is created by the AnimationManager, consists of Animation.Frame objects and belongs to a single Game Object such as a Sprite.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param parent [Phaser.Sprite] A reference to the owner of this Animation.
    # @param name [String] The unique name for this animation, used in playback commands.
    # @param frame_data [Phaser.FrameData] The FrameData object that contains all frames used by this Animation.
    # @param frames [Array<Number>, Array<String>] An array of numbers or strings indicating which frames to play in which order.
    # @param frame_rate [Number] The speed at which the animation should play. The speed is given in frames per second.
    # @param loop [Boolean] Whether or not the animation is looped or just plays once.
    # @return [Animation]

    # @!attribute  game
    #   @return [Phaser.Game] A reference to the currently running Game.
    native_accessor :game

    # @!attribute  _parent
    #   @return [Phaser.Sprite] A reference to the parent Sprite that owns this Animation.
    #   @!visibility private
    native_accessor :_parent

    # @!attribute  _frame_data
    #   @return [Phaser.FrameData] The FrameData the Animation uses.
    #   @!visibility private
    native_accessor_alias :_frame_data, :_frameData

    # @!attribute  name
    #   @return [String] The user defined name given to this Animation.
    native_accessor :name

    # @!attribute  _frames
    #   @return [array]
    #   @!visibility private
    native_accessor :_frames

    # @!attribute  delay
    #   @return [Number] The delay in ms between each frame of the Animation, based on the given frame_rate.
    native_accessor :delay

    # @!attribute  loop
    #   @return [Boolean] The loop state of the Animation.
    native_accessor :loop

    # @!attribute  loop_count
    #   @return [Number] The number of times the Animation has looped since it was last started.
    native_accessor_alias :loop_count, :loopCount

    # @!attribute  kill_on_complete
    #   @return [Boolean] Should the parent of this Animation be killed when the animation completes?
    native_accessor_alias :kill_on_complete, :killOnComplete

    # @!attribute  is_finished
    #   @return [Boolean] The finished state of the Animation. Set to true once playback completes, false during playback.
    native_accessor_alias :is_finished, :isFinished

    # @!attribute  is_playing
    #   @return [Boolean] The playing state of the Animation. Set to false once playback completes, true during playback.
    native_accessor_alias :is_playing, :isPlaying

    # @!attribute [r] is_playing?
    #   @return [Boolean] The playing state of the Animation. Set to false once playback completes, true during playback.
    # legacy
    # @see is_playing
    native_reader_alias :is_playing?, :isPlaying

    # @!attribute  is_paused
    #   @return [Boolean] The paused state of the Animation.
    native_accessor_alias :is_paused, :isPaused

    # @!attribute  _pause_start_time
    #   @return [Boolean] The time the Animation paused.
    #   @!visibility private
    native_accessor_alias :_pause_start_time, :_pauseStartTime

    # @!attribute  _frame_index
    #   @return [Number]
    #   @!visibility private
    native_accessor_alias :_frame_index, :_frameIndex

    # @!attribute  _frame_diff
    #   @return [Number]
    #   @!visibility private
    native_accessor_alias :_frame_diff, :_frameDiff

    # @!attribute  _frame_skip
    #   @return [Number]
    #   @!visibility private
    native_accessor_alias :frame_skip, :_frameSkip

    # @!attribute  current_frame
    #   @return [Phaser.Frame] The currently displayed frame of the Animation.
    native_accessor_alias :current_frame, :currentFrame

    # @!attribute  on_start
    # @return [Phaser.Signal] This event is dispatched when this Animation starts playback.
    native_accessor_alias :on_start, :onStart

    # @!attribute  on_update
    # This event is dispatched when the Animation changes frame.
    # By default this event is disabled due to its intensive nature. Enable it with: `Animation.enable_update = true`.
    # @return [Phaser.Signal, null]
    native_accessor_alias :on_update, :onUpdate

    # @!attribute  on_complete
    #   @return [Phaser.Signal] This event is dispatched when this Animation completes playback. If the Animation is set to loop this is never fired, listen for on_loop instead.
    native_accessor_alias :on_complete, :onComplete

    # @!method on_completion
    # @see on_complete
    # legacy
    native_accessor_alias :on_completion, :onComplete

    # @!attribute  on_loop
    #   @return [Phaser.Signal] This event is dispatched when this Animation loops.
    native_accessor_alias :on_loop, :onLoop

    ###
    # methods
    #########

    # @!method play(frame_rate = nil, loop = false, kill_on_complete = false)
    # Plays the Animation.
    # @param frame_rate [Number]   The framerate to play the animation at. The speed is given in frames per second. If not provided the previously set frame_rate of the Animation is used.
    # @param loop [Boolean] Should the animation be looped after playback. If not provided the previously set loop value of the Animation is used.
    # @param kill_on_complete [Boolean] If set to true when the animation completes (only happens if loop=false) the parent Sprite will be killed.
    # @return [Phaser.Animation] A reference to this Animation instance.
    alias_native :play

    # @!method restart
    # Sets this animation back to the first frame and restarts the animation.
    alias_native :restart

    # @!method set_frame(frame_id = 'nil', use_local_frame_index = false)
    # Sets this animations playback to a given frame with the given ID.
    # @param frame_id [String, Number] The identifier of the frame to set. Can be the name of the frame, the sprite index of the frame, or the animation-local frame index.
    # @param use_local_frame_index [Boolean] If you provide a number for frame_id, should it use the numeric indexes of the frame_data, or the 0-indexed frame index local to the animation.
    alias_native :set_frame, :setFrame

    # @!method stop(reset_frame = false, dispatch_complete = false)
    # Stops playback of this animation and set it to a finished state. If a resetFrame is provided it will stop playback and set frame to the first in the animation.
    # If dispatch_complete is true it will dispatch the complete events, otherwise they'll be ignored.
    # @param reset_frame [Boolean] If true after the animation stops the currentFrame value will be set to the first frame in this animation.
    # @param dispatch_complete [Boolean] Dispatch the Animation.onComplete and parent.onAnimationComplete events?
    alias_native :stop

    # @!method on_pause
    # Called when the Game enters a paused state.
    alias_native :on_pause, :onPause

    # @!method on_resume
    # Called when the Game resumes from a paused state.
    alias_native :on_resume, :onResume

    # @!method update
    # Updates this animation. Called automatically by the AnimationManager.
    alias_native :update

    # @!method update_current_frame(signal_update, from_play)
    # Changes the current_frame per the _frame_index, updates the display state,
    # and triggers the update signal.
    #
    # Returns true if the current frame update was 'successful', false otherwise.
    #   @!visibility private
    # @param [Boolean] signal_update - If true the `Animation.onUpdate` signal will be dispatched.
    # @param [Boolean] from_play - Was this call made from the playing of a new animation?
    # @return [Boolean] True if the current frame was updated, otherwise false.
    alias_native :update_current_frame, :updateCurrentFrame

    # @!method next(quantity = 1)
    # Advances by the given number of frames in the Animation, taking the loop value into consideration.
    # @param quantity [Number] The number of frames to advance.
    alias_native :next

    # @!method previous(quantity = 1)
    # Moves backwards the given number of frames in the Animation, taking the loop value into consideration.
    # @param quantity [Number] The number of frames to move back.
    alias_native :previous

    # @!method update_frame_data(frame_data)
    # Changes the FrameData object this Animation is using.
    # @param frame_data [Phaser.FrameData] The FrameData object that contains all frames used by this Animation.
    alias_native :update_frame_data, :updateFrameData

    # @!method destroy
    # Cleans up this animation ready for deletion. Nulls all values and references.
    alias_native :destroy

    # @!method complete
    # Called internally when the animation finishes playback.
    # Sets the is_playing and is_finished states and dispatches the on_animation_complete event if it exists on the parent and local on_complete event.
    alias_native :complete

    ##
    # Prototype constructor
    ##

    # @!attribute  paused
    # @return [Boolean] Gets and sets the paused state of this Animation.
    native_accessor :paused

    # @!attribute [r] frame_total
    # @return [Number] The total number of frames in the currently loaded FrameData, or -1 if no FrameData is loaded.
    native_reader_alias :frame_total, :frame_Total

    # @!attribute  frame
    # @return [Number] Gets or sets the current frame index and updates the Texture Cache for display.
    native_accessor :frame

    # @!attribute  speed
    # @return [Number] Gets or sets the current speed of the animation in frames per second. Changing this in a playing animation will take effect from the next frame. Minimum value is 1.
    native_accessor :speed

    # @!attribute  enable_update
    # @return [Boolean] Gets or sets if this animation will dispatch the on_update events upon changing frame.
    native_accessor_alias :enable_update, :enableUpdate

    ##
    # Helper methods
    ##

    # @!method self.generate_frame_names(prefix, start, stop, suffix='', zero_pad = 0)
    # Really handy function for when you are creating arrays of animation data but it's using frame names and not numbers.
    # For example imagine you've got 30 frames named: 'explosion_0001-large' to 'explosion_0030-large'
    # You could use this function to generate those by doing: Phaser.Animation.generateFrameNames('explosion_', 1, 30, '-large', 4);
    # @param prefix [String] The start of the filename. If the filename was 'explosion_0001-large' the prefix would be 'explosion_'.
    # @param start [Number] The number to start sequentially counting from. If your frames are named 'explosion_0001' to 'explosion_0034' the start is 1.
    # @param stop [Number] The number to count to. If your frames are named 'explosion_0001' to 'explosion_0034' the stop value is 34.
    # @param suffix [String] The end of the filename. If the filename was 'explosion_0001-large' the prefix would be '-large'.
    # @param zero_pad [Number] The number of zeros to pad the min and max values with. If your frames are named 'explosion_0001' to 'explosion_0034' then the zeroPad is 4.
    # @return [Array<String>] An array of frame names.
    def self.generate_frame_names(args = {})
      optional_args = { suffix: '', zeros_padding: 0 }

      optional_args.each do |optional_arg, default_value|
        args[optional_arg] = default_value unless args.include?(optional_arg)
      end

      `Phaser.Animation.generateFrameNames(#{args[:prefix]}, #{args[:start_num]}, #{args[:stop_num]}, #{args[:suffix]}, #{args[:zeros_padding]})`
    end
  end
end
