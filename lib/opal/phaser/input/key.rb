module Phaser
  class Key
    include Native

    def on(type, &block)
      case type.to_sym
      when :down
        `#@native.onDown.add(#{block.to_n})`
      when :up
        `#@native.onUp.add(#{block.to_n})`
      else
        raise ArgumentError, "Unrecognized event type #{type}"
      end
    end

    def reset(hard)
      if hard == "hard".to_sym
        `#@native.reset(true)`
      else
        `#@native.reset(false)`
      end
    end

    alias_native :down?, :isDown
  end
end
