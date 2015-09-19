module Phaser
  class Sound
    include Native
    
    alias_native :play
  end
end