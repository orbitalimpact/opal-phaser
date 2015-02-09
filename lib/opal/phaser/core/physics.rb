module Phaser
  class Physics
  	def initialize (game)
  		`new Phaser.Physics(game)`
  	end

  	def start_system
  		`Phaser.Physics.startSystem`
  	end

    ARCADE = `Phaser.Physics.ARCADE`

    class Arcade
    	class Body
    		def initialize (sprite)
    			@native = `new Phaser.Physics.Arcade.Body(sprite)`
    		end
    	end
    end
  end
end
