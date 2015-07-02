require 'opal/phaser/core/signal'

module Phaser
  class Events
    include Native

    alias_native :on_input_down, :onInputDown, as: Signal

    def on(type, context, &block)
      case type.to_sym
      when :up
        `#@native.onInputUp.add(#{block.to_n}, #{context})`
      when :down
        `#@native.onInputDown.add(#{block.to_n}, #{context})`
      when :out
        `#@native.onInputOut.add(#{block.to_n}, #{context})`
      when :over
        `#@native.onInputOver.add(#{block.to_n}, #{context})`
      when :out_of_bounds
        `#@native.onOutOfBounds.add(#{block.to_n}, #{context})`
      end
    end
  end
end