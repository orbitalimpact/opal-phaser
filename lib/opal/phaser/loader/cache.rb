module Phaser
  class Cache
    include Native

    alias_native :add_sprite_sheet, :addSpriteSheet
    alias_native :get_image, :getImage, as: Image
  end
end