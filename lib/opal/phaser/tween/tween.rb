module Phaser
  class Tween
    include Native

    alias_native :start

    def to(args = {})
      optional_args = {duration: 1000, ease: Phaser::Easing.Default, auto_start: false, delay: 0, repeat: 0, yoyo: false}

      optional_args.each do |optional_arg, default_value|
        unless args.include?(optional_arg)
          args[optional_arg] = default_value
        end
      end

      Tween.new `#@native.to(#{args[:properties].to_n}, #{args[:duration]}, #{args[:ease]}, #{args[:auto_start]}, #{args[:delay]}, #{args[:repeat]}, #{args[:yoyo]})`
    end

    def on(type, context = nil, &block)
      case type.to_sym
      when :child_complete
        `#@native.onChildComplete.add(#{block.to_n}, #{context})`
      when :complete
        `#@native.onComplete.add(#{block.to_n}, #{context})`
      when :loop
        `#@native.onLoop.add(#{block.to_n}, #{context})`
      when :repeat
        `#@native.onRepeat.add(#{block.to_n}, #{context})`
      when start
        `#@native.onStart.add(#{block.to_n}, #{context})`
      end
    end
  end
end