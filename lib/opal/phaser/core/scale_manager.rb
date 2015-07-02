module Phaser
  class ScaleManager
    include Native

    # A scale mode that stretches content to fill all available space
    EXACT_FIT = 0;

    # A scale mode that prevents any scaling
    NO_SCALE = 1;

    # A scale mode that shows the entire game while maintaining proportions
    SHOW_ALL = 2;

    # A scale mode that causes the Game size to change - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
    RESIZE = 3;

    # A scale mode that allows a custom scale factor - see {@link Phaser.ScaleManager#scaleMode scaleMode}.
    USER_SCALE = 4;

    alias_native :scale_mode, :scaleMode
    alias_native :refresh

    def scale_mode=(mode)
      `#@native.scaleMode = #{mode}`
    end
  end
end
