module Phaser
  class Timer
    include Native
    
    SECOND = `Phaser.Timer.SECOND`
    
    alias_native :loop, :loop, as: TimerEvent
    alias_native :start
  end
end