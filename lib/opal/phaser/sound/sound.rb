module Phaser
  class Sound
    include Native
    
    alias_native :play
    alias_native :stop
  end
end