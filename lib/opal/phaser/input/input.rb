require 'opal/phaser/input/keyboard'
require 'opal/phaser/input/pointer'
require 'opal/phaser/input/mouse_event'
require 'opal/phaser/core/signal'

module Phaser
  class Input
    include Native

    alias_native :x
    alias_native :y

    alias_native :keyboard,       :keyboard,      as: Keyboard
    alias_native :mouse_pointer,  :mousePointer,  as: Pointer

    def on(type, &block)
      cast_and_yield = proc do |pointer, event|
        pointer = Phaser::Pointer.new(pointer)
        event = event && Phaser::MouseEvent.new(event)
        block.call(pointer, event)
      end

      if block_given?
        case type.to_sym
        when :down
          `#@native.onDown.add(#{cast_and_yield.to_n})`
        when :up
          `#@native.onUp.add(#{cast_and_yield.to_n})`
        when :tap
          `#@native.onTap.add(#{cast_and_yield.to_n})`
        when :hold
          `#@native.onHold.add(#{cast_and_yield.to_n})`
        else
          raise ArgumentError, "Unrecognized event type #{type}"
        end
      else
        Signal.new
      end
    end
    alias_native :active_pointer, :activePointer, as: Pointer
  end
end
