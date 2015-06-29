require 'opal/phaser/core/signal'
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

    def self.generate_frame_names(args = {})
      prefix        = args[:prefix]
      start_num     = args[:start_num]
      stop_num      = args[:stop_num]
      suffix        = args[:suffix, ""]
      zeros_padding = args[:zeros_padding, 0]
      
      `Phaser.Animation.generateFrameNames(prefix, start_num, stop_num, suffix, zeros_padding)`
    end

    alias_native :is_playing?, :isPlaying
  end
end