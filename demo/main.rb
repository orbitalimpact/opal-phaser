module Phaser
    AUTO = `Phaser.AUTO`
    class Game < `Phaser.Game`
      def initialize(*args)
        puts "initialize"
        super
      end

      def add
        puts "add"
      `this.add`
      end
    end
end

class Game
    def initialize
      puts "Game initialize"
      @game = Phaser::Game.new(800, 600, Phaser::AUTO, "", { :preload => proc { preload }.to_n, :create => proc { create }.to_n })
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

# phaser_game = Game.new