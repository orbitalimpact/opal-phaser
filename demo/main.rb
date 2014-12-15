module Phaser
    class Game < `Phaser.Game`
        Phaser::AUTO = `Phaser.AUTO`
        
        def add
            `this.add`
        end
    end
end

class Game
    def initialize
        @game = Phaser::Game.new(800, 600, Phaser::AUTO, "", { :preload => preload, :create => create })
    end
    
    def preload
        #@game.load.image("logo", "phaser.png")
    end
    
    def create
        `console.log(this.isBooted)`
        @game.add.text(100, 100, "test")
        @logo = @game.add.sprite(100, 100, "logo")
    end
end

phaser_game = Game.new