module Phaser
  class Text
    include Native
    
    def text=(text)
      `#@native.text = text`
    end
  end
end