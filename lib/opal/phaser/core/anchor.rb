module Phaser
  class Anchor
    include Native

    alias_native :set_to, :setTo
    alias_native :set
  end
end
