module Phaser
  class Time
    include Native

    alias_native :events, :events, as: Timer
    alias_native :fps
    alias_native :physics_elapsed, :physicsElapsed
    alias_native :physics_elapsed_ms, :physicsElapsedMS
    alias_native :now
    
    def advanced_timing=(bool)
      `#@native.advancedTiming = bool`
    end
  end
end
