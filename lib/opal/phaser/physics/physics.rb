module Phaser
  class Physics
    include Native

    class Arcade
      include Native

      alias_native :enable
      alias_native :collide
      alias_native :overlap
      alias_native :distance_to_pointer, :distanceToPointer
      alias_native :move_to_pointer,     :moveToPointer
      alias_native :check_collision,     :checkCollision

    	class Body
        include Native
        
        alias_native :gravity
        alias_native :velocity
        alias_native :bounce
        alias_native :touching
        alias_native :set_size, :setSize
        
        def collide_world_bounds=(bool)
          `#@native.collideWorldBounds = bool`
        end
        
        def immovable=(bool)
          `#@native.immovable = bool`
        end
    	end
    end

    ARCADE = `Phaser.Physics.ARCADE`
    P2JS   = `Phaser.Physics.P2JS`
    NINJA  = `Phaser.Physics.NINJA`
    BOX2D  = `Phaser.Physics.BOX2D`

    alias_native :start_system, :startSystem
    alias_native :arcade, :arcade, as: Arcade
    alias_native :enable

  end
end
