module Phaser
  class Stage
    include Native
    
    def background_color=(color)
      `#@native.backgroundColor = color`
    end
  end
end