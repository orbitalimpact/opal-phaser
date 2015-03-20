module Phaser
  class Animation
    include Native
    
    alias_native :play
    
    alias_native :on_start,      :onStart,    as: Signal
    alias_native :on_loop,       :onLoop,     as: Signal
    alias_native :on_completion, :onComplete, as: Signal
    
    alias_native :loop_count, :loopCount
    
    def loop=(bool)
      `#@native.loop = bool`
    end
    
    alias_native :is_playing?, :isPlaying
  end
end