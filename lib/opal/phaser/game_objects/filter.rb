module Phaser
  class Filter
    include Native
    alias_native :set_resolution, :setResolution
    alias_native :update

    def initialize(game, uniforms, source)
      @native = `new Phaser.Filter(#{game.to_n}, #{uniforms.to_n}, #{source.to_n})`
    end
  end
end
