require 'opal/phaser/native_helpers'
require 'opal/phaser/animation/frame'

module Phaser
  class FrameData
    include Native

    # @!method initialize
    # FrameData is a container for Frame objects, which are the internal representation of animation data in Phaser.

    # @!attribute _frames
    #   @return [Array] Local array of frames.
    #   @!visibility private
    native_accessor :_frames

    # @!attribute _frame_names
    #   @return [Array] Local array of frame names for name to index conversions.
    #   @!visibility private
    native_accessor_alias :_frame_names, :_frameNames

    ##
    # methods
    #########

    # @!method add_frame(frame)
    # Adds a new Frame to this FrameData collection. Typically called by the Animation.Parser and not directly.
    # @param frame [Phaser.Frame] The frame to add to this FrameData set.
    # @return [Phaser.Frame] The frame that was just added.
    alias_native :add_frame, :addFrame, as: Frame

    # @!method get_frame(index)
    # Get a Frame by its numerical index.
    # @param index [Number] The index of the frame you want to get.
    # @return [Phaser.Frame] The frame, if found.
    alias_native :get_frame, :getFrame, as: Frame

    # @!method get_frame_by_name(name)
    # Get a Frame by its frame name.
    # @param name [String] The name of the frame you want to get.
    # @return [Phaser.Frame] The frame, if found.
    alias_native :get_frame_by_name, :getFrameByName, as: Frame

    # @!method check_frame_name(name)
    # Check if there is a Frame with the given name.
    # @param name [String] The name of the frame you want to check.
    # @return [Boolean] True if the frame is found, otherwise false.
    alias_native :check_frame_name, :checkFrameName

    # @!method clone
    # Makes a copy of this FrameData including copies (not references) to all of the Frames it contains.
    # @return [Phaser.FrameData] A clone of this object, including clones of the Frame objects it contains.
    native_accessor :clone

    # @!method get_frame_range(start, end, output)
    # Returns a range of frames based on the given start and end frame indexes and returns them in an Array.
    # @param start [Number] The starting frame index.
    # @param end [Number] The ending frame index.
    # @param output [Array] If given the results will be appended to the end of this array otherwise a new array will be created.
    # @return [Array] An array of Frames between the start and end index values, or an empty array if none were found.
    native_accessor :get_frame_range, :FrameRange

    # @!method get_frames(frames, use_numeric_index = true, output)
    # Returns all of the Frames in this FrameData set where the frame index is found in the input array.
    # The frames are returned in the output array, or if none is provided in a new Array object.
    # @param frames [Array] An Array containing the indexes of the frames to retrieve. If the array is empty or undefined then all frames in the FrameData are returned.
    # @param use_numeric_index [Boolean] Are the given frames using numeric indexes (default) or strings? (false)
    # @param output [Array] If given the results will be appended to the end of this array otherwise a new array will be created.
    # @return [Array] An array of all Frames in this FrameData set matching the given names or IDs.
    alias_native :get_frames, :getFrames

    # @!method get_frame_indexes(frames, use_numberic_index = true, output)
    # Returns all of the Frame indexes in this FrameData set.
    # The frames indexes are returned in the output array, or if none is provided in a new Array object.
    # @param frames [Array] An Array containing the indexes of the frames to retrieve. If undefined or the array is empty then all frames in the FrameData are returned.
    # @param use_numberic_index [Boolean] Are the given frames using numeric indexes (default) or strings? (false)
    # @param output [Array] If given the results will be appended to the end of this array otherwise a new array will be created.
    # @return [Array] An array of all Frame indexes matching the given names or IDs.
    alias_native :get_frame_indexes, :getFrameIndexes

    # @!attribute [r] total
    #   @return [Number] The total number of frames in this FrameData set.
    native_reader :total
  end
end
