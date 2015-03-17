module Phaser
  class Anchor
    include Native

    alias_native :set_to, :setTo
  end
end
