module Phaser
  class Time
    include Native
    
    alias_native :events, :events, as: Timer
    alias_native :fps
    
    def advanced_timing=(bool)
      `#@native.advancedTiming = bool`
    end
  end
end