module Phaser
  class Loader
    include Native

    def initialize(game)
      if native?(game)
        super
      else
        super(`new Phaser.Loader(#{game.to_n})`)
      end
    end

    alias_native :image
    alias_native :spritesheet
    alias_native :start

    alias_native :onFileComplete
    alias_native :onFileError
    alias_native :onFileStart
    alias_native :onLoadComplete
    alias_native :onLoadStart

    alias_native :cross_origin=, :crossOrigin

    def cross_origin=(value)
      `#@native.crossOrigin = #{value}`
    end

    def on(type, context, &block)
      case type.to_sym
      when :file_complete
        `#@native.onFileComplete.add(#{block.to_n}, #{context})`
      when :file_error
        `#@native.onFileError.add(#{block.to_n}, #{context})`
      when :file_start
        `#@native.onFileStart.add(#{block.to_n}, #{context})`
      when :load_complete
        `#@native.onLoadComplete.add(#{block.to_n}, #{context})`
      when :load_start
        `#@native.onLoadStart.add(#{block.to_n}, #{context})`
      end
    end
  end
end
