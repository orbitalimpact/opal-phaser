require 'opal/phaser/native_helpers'
require 'opal/phaser/geometry/rectangle'

module Phaser
  class Frame
    include Native

    # A Frame is a single frame of an animation and is part of a FrameData collection.
    # @param index [Number] The index of this Frame within the FrameData set it is being added to.
    # @param x [Number] X position of the frame within the texture image.
    # @param y [Number] Y position of the frame within the texture image.
    # @param width [Number] Width of the frame within the texture image.
    # @param height [Number] Height of the frame within the texture image.
    # @param name [String] The name of the frame. In Texture Atlas data this is usually set to the filename.
    def initalize(index, x, y, width, height, name)
      super `new Phaser.Frame(index, x, width, height, name)`
    end

    ###
    # properties
    ############

    # @!attribute index
    #   @return [Number] The index of this Frame within the FrameData set it is being added to.
    native_accessor :index

    # @!attribute x
    #   @return [Number] X position within the image to cut from.
    native_accessor :x

    # @!attribute y
    #   @return [Number] Y position within the image to cut from.
    native_accessor :y

    # @!attribute width
    #   @return [Number] Width of the frame.
    native_accessor :width

    # @!attribute height
    #   @return [Number] Height of the frame.
    native_accessor :height

    # @!attribute name
    #   @return [String] Useful for Texture Atlas files (is set to the filename value).
    native_accessor :name

    # @!attribute center_x
    #   @return [Number] Center X position within the image to cut from.
    native_accessor_alias :center_y, :centerX

    # @!attribute center_y
    #   @return [Number] Center Y position within the image to cut from.
    native_accessor_alias :center_y, :centerY

    # @!attribute distance
    #   @return [Number] The distance from the top left to the bottom-right of this Frame.
    native_accessor :distance

    # @!attribute rotated
    #   @return [Boolean] Rotated? (not yet implemented)
    native_accessor :rotated

    # @!attribute rotation_directon
    #   @return [String] Either 'cw' or 'ccw', rotation is always 90 degrees.
    native_accessor_alias :rotation_direction, :rotationDirection

    # @!attribute trimmed
    #   @return {boolean} Was it trimmed when packed?
    native_accessor :trimmed

    # @!attribute source_size_w
    #   @return [Number] Width of the original sprite before it was trimmed.
    native_accessor_alias :source_size_w, :sourceSizeW

    # @!attribute source_size_h
    #   @return [Number] Height of the original sprite before it was trimmed.
    native_accessor_alias :source_size_h, :sourceSizeH

    # @!attribute sprite_source_size_x
    #   @return [Number] X position of the trimmed sprite inside original sprite.
    native_accessor_alias :sprite_source_size_x, :spriteSourceSizeX

    # @!attribute sprite_source_size_y
    #   @return [Number] Y position of the trimmed sprite inside original sprite.
    native_accessor_alias :sprite_source_size_y, :spriteSourceSizeY

    # @!attribute sprite_source_size_w
    #   @return [Number] Width of the trimmed sprite.
    native_accessor_alias :sprite_source_size_w, :spriteSourceSizeW

    # @!attribute sprite_source_size_h
    #   @return [Number] Height of the trimmed sprite.
    native_accessor_alias :sprite_source_size_h, :spriteSourceSizeH

    # @!attribute right
    #   @return [Number] The right of the Frame (x + width).
    native_accessor_alias :right #= this.x + this.width;

    # @!attribute bottom
    #   @return [Number] The bottom of the frame (y + height).
    native_accessor :bottom

    ###
    # methods
    #########

    # @!method resize(width, height)
    # Adjusts of all the Frame properties based on the given width and height values.
    # @param {integer} width - The new width of the Frame.
    # @param {integer} height - The new height of the Frame.
    alias_native :resize

    # @!method set_trim(trimmed, actual_width, actual_height, dest_x, dest_y, dest_width, dest_height)
    # If the frame was trimmed when added to the Texture Atlas this records the trim and source data.
    # @param trimmed [Boolean] If this frame was trimmed or not.
    # @param actual_width [Number] The width of the frame before being trimmed.
    # @param actual_height [Number] The height of the frame before being trimmed.
    # @param dest_x [Number] The destination X position of the trimmed frame for display.
    # @param dest_y [Number] The destination Y position of the trimmed frame for display.
    # @param dest_width [Number] The destination width of the trimmed frame for display.
    # @param dest_height [Number] The destination height of the trimmed frame for display.
    alias_native :set_trim, :setTrim

    # @!method clone
    # Clones this Frame into a new Phaser.Frame object and returns it.
    # Note that all properties are cloned, including the name, index and UUID.
    # @return {Phaser.Frame} An exact copy of this Frame object.
    alias_native :clone

    # @!method rectangle(out)
    # Returns a Rectangle set to the dimensions of this Frame.
    # @param out [Phaser.Rectangle] A rectangle to copy the frame dimensions to.
    # @return [Phaser.Rectangle] A rectangle.
    alias_native :get_rectangle, :getRect, as: Rectangle
  end
end
