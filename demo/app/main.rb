require 'opal'
require 'opal-phaser'
require 'pp'

class Platforms
  attr_accessor :ground_object
  attr_accessor :platforms

  def initialize(game)
    @sprite_key = 'ground'
    @sprite_url = 'assets/platform.png'
    @game       = game
  end

  def preload
    @game.load.image(@sprite_key, @sprite_url)
  end

  def create
    @game.physics.startSystem(Phaser::Physics::ARCADE)
    @platforms = @game.add.group
    @platforms.enableBody = true

    @platforms.create(400, 400, 'ground')

    create_ground
    create_ledge(400, 400)
    create_ledge(-150, 250)
  end

  private

  def create_ground
    ground = @platforms.create(0, @game.world.height - 64, @sprite_key)
    ground.scale.setTo(2, 2)
    ground.body.immovable = true
  end

  def create_ledge(x, y)
    ledge = @platforms.create(x, y, @sprite_key)
    ledge.scale.setTo(2, 2)
    ledge.body.immovable = true
  end
end

class Game
  attr_accessor :game_debug

  def initialize
    run
  end

  def run
    preload
    create_game
    Phaser::Game.new(800, 674, Phaser::AUTO, '', state)
  end

  private

  def preload
    state.preload do |game|
      @game_debug = game
      @platforms = Platforms.new(game)
      @platforms.preload
    end
  end

  def create_game
    state.create do
      @platforms.create
    end
  end

  def state
    @state ||= Phaser::State.new
  end
end