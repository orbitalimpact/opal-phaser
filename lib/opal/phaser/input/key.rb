module Phaser
  class Key
    include Native
    
    def on(type, &block)
      case type.to_sym
      when :down
        `#@native.onDown.add(#{block.to_n})`
      when :up
        `#@native.onUp.add(#{block.to_n})`
      end
    end
    
    alias_native :down?, :isDown
  end
end