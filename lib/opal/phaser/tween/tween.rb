module Phaser
  class Tween
    include Native

    alias_native :to, :to, as: Tween
    alias_native :start

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