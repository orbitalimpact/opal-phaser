require 'opal'
require 'opal/phaser'

class Game
  def initialize
    @phaser = Phaser::Game.new(800, 600, Phaser::AUTO, '', { preload: proc { preload }.to_n, create: proc { create }.to_n })
  end

  def preload
    @phaser.load.image('logo', 'phaser.png');
  end

  def create
    # @logo = @phaser.add.sprite(game.world.centerX, game.world.centerY, 'logo')
    # @logo.anchor = [0.5, 0.5]
  end
end


