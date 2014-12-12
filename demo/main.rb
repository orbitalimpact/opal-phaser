module PHASER
    class Game < `Phaser.Game`
    end     
end

class Game
    def initialize
        @game = PHASER::Game.new(800, 600, PHASER::AUTO, "", { :preload => preload, :create => create })
    end
    
    def preload
        @game.load.image("logo", "phaser.png")
    end
    
    def create
        @logo = @game.add.sprite(100, 100, "logo")
    end
end