module Phaser
    class Game < `Phaser.Game`
        Phaser::AUTO = `Phaser.AUTO`
    end
end

class Game
    def initialize
        @game = Phaser::Game.new(800, 600, Phaser::AUTO, "", { :preload => preload, :create => create })
    end
    
    def preload
        @game.load.image("logo", "phaser.png")
    end
    
    def create
        @logo = @game.add.sprite(100, 100, "logo")
    end
end

phaser_game = Game.new