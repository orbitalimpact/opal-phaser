module Phaser
  class Tween
    include Native

    alias_native :start

    def to(args = {})
      properties = args[:properties].to_n
      duration   = args[:duration, 1000]
      ease       = args[:ease, nil]
      auto_start = args[:auto_start, false]
      delay      = args[:delay, 0]
      repeat     = args[:repeat, 0]
      yoyo       = args[:yoyo, false]
      
      `#@native.to(properties, duration, ease, auto_start, delay, repeat, yoyo)`
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