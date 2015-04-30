module Phaser
  class Text
    include Native
    
    alias_native :destroy
    
    def text=(text)
      `#@native.text = text`
    end
  end
end