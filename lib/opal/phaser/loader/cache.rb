module Phaser
  class Cache
    include Native
    
    alias_native :add_sprite_sheet, :addSpriteSheet
  end
end