require 'opal'
require 'opal-phaser'
require 'pp'

class Score
  attr_accessor :score
  attr_reader   :scoreText

  def initialize(game)
    @game = game
  end

  def preload
    # nothing in here for this class
  end

  def create
    @score = 0
    @scoreText = @game.add.text(16, 16, 'score: 0', {fontSize: '32px', fill: '#000'})
  end
end

class Star
  attr_accessor :stars

  def initialize(game)
    @sprite_key = 'star'
    @sprite_url = 'assets/star.png'
    @game       = game
  end

  def preload
    @game.load.image(@sprite_key, @sprite_url)
  end

  def create
    @stars = @game.add.group
    stars.enable_body = true

    12.times do |n|
      star = stars.create(n * 70, 0, 'star')
      star.body.gravity.y = 6
      star.body.bounce.y = 0.7 + rand * 0.2
    end
  end
end

class Sky
  def initialize(game)
    @sprite_key = 'sky'
    @sprite_url = 'assets/sky.png'
    @game       = game
  end

  def preload
    @game.load.image(@sprite_key, @sprite_url)
  end

  def create
    @game.add.sprite(0, 0, @sprite_key)
  end
end

class Platforms
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
    @game.physics.start_system(Phaser::Physics::ARCADE)
    @platforms = @game.add.group
    @platforms.enable_body = true

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
    ledge.body.immovable = true
  end
end

class Player
  attr_accessor :player

  def initialize(game)
    @game = game

    @sprite_key = 'dude'
    @sprite_url = 'assets/dude.png'

    @x = 32
    @y = @game.world.height - 150
  end

  def preload
    @game.load.spritesheet(@sprite_key, @sprite_url, 32, 48)
  end

  def create
    @player = @game.add.sprite(@x, @y, @sprite_key)

    @game.physics.arcade.enable(@player)

    player.body.bounce.y = 0.2
    player.body.gravity.y = 300
    player.body.collideWorldBounds = true

    player.animations.add('left', [0, 1, 2, 3], 10, true)
    player.animations.add('right', [5, 6, 7, 8], 10, true)
  end

  def update
    cursors = @game.input.keyboard.createCursorKeys
    movement(cursors)
  end

  def movement(cursors)
    player.body.velocity.x = 0

    case
    when cursors.left.isDown
      player.body.velocity.x = -150
      player.animations.play('left')
    when cursors.right.isDown
      player.body.velocity.x = 150
      player.animations.play('right')
    else
      player.animations.stop
      player.frame = 4
    end

    if cursors.up.isDown && player.body.touching.down
      player.body.velocity.y = -350
    end
  end
end

class Game
  def initialize
    run
  end

  def run
    preload
    create_game
    update_game

    Phaser::Game.new(width: 800, height: 600, renderer: Phaser::AUTO, parent: '', state: state, transparent: false, antialias: true, physics: nil)
  end

  private

  def preload
    state.preload do |game|
      initialize_entities(game)
      entities_call :preload
    end
  end

  def create_game
    state.create do
      entities_call :create
    end
  end

  def update_game
    collect_star = proc do |player, star, score|
      star = Phaser::Sprite.new(star)
      star.kill

      @score.score += 10
      @score.scoreText.text = "score: #{@score.score}"
    end

    state.update do |game|
      game.physics.arcade.collide(@player.player, @platforms.platforms)
      game.physics.arcade.collide(@star.stars, @platforms.platforms)
      game.physics.arcade.overlap(@player.player, @star.stars, collect_star)

      @player.update
    end
  end

  def state
    @state ||= Phaser::State.new
  end

  def initialize_entities(game)
    @sky       = Sky.new(game)
    @platforms = Platforms.new(game)
    @player    = Player.new(game)
    @star      = Star.new(game)
    @score     = Score.new(game)

    @entities ||= [@sky, @platforms, @player, @star, @score]
  end

  def entities_call(method)
    @entities.each { |e| e.send(method) }
  end
end