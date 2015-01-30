require 'opal'
require 'opal-phaser'

class Game
  def initialize
    @player     = nil
    @platforms  = nil
    @cursors    = nil
    @stars      = nil

    @phaser     = Phaser::Game.new(800, 654) do |state|
      state.preload do |game|
        game.load.image('sky',     'assets/sky.png')
        game.load.image('ground',  'assets/platform.png')
        game.load.image('star',    'assets/star.png')
        game.load.spritesheet('dude',    'assets/dude.png',    32,  48)
      end

      state.create do |game|
        @score      = 0
        game.physics.startSystem(Phaser::Physics::ARCADE)
        game.add.sprite(0, 0, 'sky')

        @platforms = game.add.group()
        @platforms.enable_body = true

        ground = @platforms.create(0, game.world.height - 64, 'ground')

        ground.scale.setTo(2, 2)
        ground.body.immovable = true

        ledge = @platforms.create(400, 400, 'ground')
        ledge.body.immovable = true

        ledge = @platforms.create(-150, 250, 'ground')
        ledge.body.immovable = true

        @player = game.add.sprite(32, game.world.height - 150, 'dude', 4)

        game.physics.arcade.enable(@player)

        @player.body.bounce.y = 0.2
        @player.body.gravity.y = 300
        @player.body.collideWorldBounds = true

        @player.animations.add('left', [0, 1, 2, 3], 10, true)
        @player.animations.add('right', [5, 6, 7, 8], 10, true)

        @stars = game.add.group()
        @stars.enableBody = true

        12.times do |i|
          star = @stars.create(i*70, 0, 'star')

          star.body.gravity.y = 300
          star.body.bounce.y = 0.7 + rand * 0.2
        end

        @scoreText = game.add.text(16, 16, 'score: 0', { fontSize: '32px', fill: '#000' })

        @cursors = game.input.keyboard.createCursorKeys()
      end

      state.update do |game|
        game.physics.arcade.collide(@player, @platforms)
        game.physics.arcade.collide(@stars, @platforms)

        collectStar = proc do |player, star|
          %x{ star.kill() }
          @score += 10
          @scoreText.text = "Score: #@score"
        end
        game.physics.arcade.overlap(@player, @stars, collectStar, nil, self)

        @player.body.velocity.x = 0

        if @cursors.left.isDown
          @player.body.velocity.x = -150
          @player.animations.play('left')
        elsif @cursors.right.isDown
          @player.body.velocity.x = 150
          @player.animations.play('right')
        else
          @player.animations.stop
          @player.frame = 4
        end

        if @cursors.up.isDown && @player.body.touching.down
          @player.body.velocity.y = -350
        end
      end
    end
  end

  def collectStar
  end
end