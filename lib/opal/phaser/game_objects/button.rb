module Phaser
  class Button
    include Native
    
    alias_native :load_texture, :loadTexture
  end
end