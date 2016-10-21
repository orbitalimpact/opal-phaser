require 'opal/phaser/native_helpers'
require 'opal/phaser/animation/frame_data'

module Phaser
  # Responsible for parsing sprite sheet and JSON data into the internal FrameData format that Phaser uses for animations.
  class AnimationParser
    include Native

    # Responsible for parsing sprite sheet and JSON data into the internal FrameData format that Phaser uses for animations.
    # @!method intialize

    # @!method sprite_sheet(game, key, frame_width, frame_height, frame_max = -1, margin = 0, spacing = 0)
    # Parse a Sprite Sheet and extract the animation frame data from it.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param key [String, Image] The Game.Cache asset key of the Sprite Sheet image or an actual HTML Image element.
    # @param frame_width [Number] The fixed width of each frame of the animation.
    # @param frame_height [Number] The fixed height of each frame of the animation.
    # @param frame_max [Number] The total number of animation frames to extract from the Sprite Sheet. The default value of -1 means "extract all frames".
    # @param margin [Number] If the frames have been drawn with a margin, specify the amount here.
    # @param spacing [Number] If the frames have been drawn with spacing between them, specify the amount here.
    # @return [Phaser.FrameData] A FrameData object containing the parsed frames.
    alias_native :sprite_sheet, :spriteSheet, as: FrameData

    # @!method json_data(game, json)
    # Parse the JSON data and extract the animation frame data from it.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param json [Object] The JSON data from the Texture Atlas. Must be in Array format.
    # @return [Phaser.FrameData] A FrameData object containing the parsed frames.
    alias_native :json_data, :JSONData, as: FrameData

    # @!method json_data_pyxel(game, json)
    # Parse the JSON data and extract the animation frame data from it.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param json [Object] The JSON data from the Texture Atlas. Must be in Pyxel JSON format.
    # @return [Phaser.FrameData] A FrameData object containing the parsed frames.
    alias_native :json_data_pyxel, :JSONDataPyxel, as: FrameData

    # @!method json_data_hash(game, json)
    # Parse the JSON data and extract the animation frame data from it.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param json [Object] The JSON data from the Texture Atlas. Must be in JSON Hash format.
    # @return [Phaser.FrameData] A FrameData object containing the parsed frames.
    alias_native :json_data_hash, :JSONDataHash, as: FrameData

    # @!method xml_data(game, xml)
    # Parse the XML data and extract the animation frame data from it.
    # @param game [Phaser.Game] A reference to the currently running game.
    # @param xml [Object] The XML data from the Texture Atlas. Must be in Starling XML format.
    # @return [Phaser.FrameData] A FrameData object containing the parsed frames.
    alias_native :xml_data, :XMLData, as: FrameData
  end
end
