module Phaser
  class Time
    include Native
    
    alias_native :events, :events, as: Timer
    alias_native :fps
    alias_native :advancedTiming
  end
end