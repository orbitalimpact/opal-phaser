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
      optional_args = {suffix: "", zeros_padding: 0}
      
      optional_args.each do |optional_arg, default_value|
        unless args.include?(optional_arg)
          args[optional_arg] = default_value
        end
      end
      
      `Phaser.Animation.generateFrameNames(#{args[:prefix]}, #{args[:start_num]}, #{args[:stop_num]}, #{args[:suffix]}, #{args[:zeros_padding]})`
    end

    alias_native :is_playing?, :isPlaying
  end
end