module Phaser
  class TimerEvent
    include Native
    
    alias_native :start
    alias_native :timer
  end
end