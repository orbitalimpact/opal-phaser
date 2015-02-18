module Phaser
  class Physics
  	def initialize(game)
  		@native = `new Phaser.Physics(game)`
  	end

    ARCADE = `Phaser.Physics.ARCADE`
    P2JS   = `Phaser.Physics.P2JS`
    NINJA  = `Phaser.Physics.NINJA`
    BOX2D  = `Phaser.Physics.BOX2D`

    class Arcade
    	class Body
        
        #attr_accessor :bounce
        #attr_accessor :gravity
        
    		def initialize (sprite)
    			@native = `new Phaser.Physics.Arcade.Body(sprite)`
          # FUTURE NATIVE METHODS AND PROPERTIES FROM THE BODY CLASS
          #@bounce = `#@native.bounce`
          #@gravity = `#@native.gravity`
          #
          #def collide_world_bounds= (bool)
          #  if bool == true
          #    puts "ran true"
          #  else
          #    puts "ran false"
          #  end
          #end
    		end
    	end
    end
  end
end
