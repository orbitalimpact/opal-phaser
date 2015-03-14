module Phaser
  class Physics
    include Native

    class Arcade
      include Native
      
      alias_native :enable
      alias_native :collide
      alias_native :overlap
    	class Body
    	end
    end

    ARCADE = `Phaser.Physics.ARCADE`
    P2JS   = `Phaser.Physics.P2JS`
    NINJA  = `Phaser.Physics.NINJA`
    BOX2D  = `Phaser.Physics.BOX2D`

    alias_native :start_system, :startSystem
    alias_native :arcade, :arcade, as: Arcade

  end
end
