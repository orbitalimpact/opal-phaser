module Phaser
  class Physics
    include Native

    class Arcade
    	class Body
    	end
    end

    ARCADE = `Phaser.Physics.ARCADE`
    P2JS   = `Phaser.Physics.P2JS`
    NINJA  = `Phaser.Physics.NINJA`
    BOX2D  = `Phaser.Physics.BOX2D`

    alias_native :start_system, :startSystem
    alias_native :arcade

  end
end
