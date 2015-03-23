module Phaser
  class Tween
    include Native
    
    alias_native :to
    alias_native :start
  end
end