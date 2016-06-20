require 'opal/phaser/geometry/point'
module Phaser
  class Button
    include Native

    alias_native :anchor, :anchor, as: Point
    alias_native :load_texture, :loadTexture
  end
end
