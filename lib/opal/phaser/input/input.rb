require 'opal/phaser/input/keyboard'
require 'opal/phaser/input/pointer'
module Phaser
  class Input
    include Native

    alias_native :x
    alias_native :y

    alias_native :keyboard,       :keyboard,      as: Keyboard
    alias_native :mouse_pointer,  :mousePointer,  as: Pointer

    def on(type, &block)
      case type.to_sym
      when :down
        `#@native.onDown.add(#{block.to_n})`
      when :up
        `#@native.onUp.add(#{block.to_n})`
      when :tap
        `#@native.onTap.add(#{block.to_n})`
      when :hold
        `#@native.onHold.add(#{block.to_n})`
      end
    end
    alias_native :active_pointer, :activePointer
  end
end