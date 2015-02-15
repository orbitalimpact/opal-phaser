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
    		def initialize (sprite)
    			@native = `new Phaser.Physics.Arcade.Body(sprite)`
    		end
    	end
    end
  end
end
