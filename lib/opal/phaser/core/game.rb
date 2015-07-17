require 'opal/phaser/loader/cache'
require 'opal/phaser/game_objects/game_object_factory'
require 'opal/phaser/game_objects/game_object_creator'
require 'opal/phaser/core/world'
require 'opal/phaser/core/stage'
require 'opal/phaser/core/state_manager'
require 'opal/phaser/input/input'
require 'opal/phaser/math/random_data_generator'
require 'opal/phaser/core/camera'
require 'opal/phaser/core/loader'
require 'opal/phaser/core/scale_manager'
require 'opal/phaser/pixi/web_gl_renderer'

module Phaser
  AUTO   = `Phaser.AUTO`
  WEBGL  = `Phaser.WEBGL`
  CANVAS = `Phaser.CANVAS`

  class Game
    include Native

    def initialize(arg_hash = {}, &block)

      width       = arg_hash.fetch(:width) { 800 }
      height      = arg_hash.fetch(:height) { 600 }
      renderer    = arg_hash.fetch(:renderer) { Phaser::AUTO }
      parent      = arg_hash.fetch(:parent) { "" }
      state       = arg_hash.fetch(:state) { nil }
      transparent = arg_hash.fetch(:transparent) { false }
      antialias   = arg_hash.fetch(:antialias) { true }
      physics     = arg_hash.fetch(:physics) { nil }

      if state
        state.game = self
      end

      if block_given?
        state = State.new(self) if state.nil?
        state.instance_eval(&block)
      end

      @native = %x{
        new Phaser.Game(width, height, renderer, parent, #{state.to_n}, transparent,
                        antialias, physics)
      }
    end

    alias_native :cache,    :cache,    as: Cache
    alias_native :add,      :add,      as: GameObjectFactory
    alias_native :world,    :world,    as: World
    alias_native :stage,    :stage,    as: Stage
    alias_native :state,    :state,    as: StateManager
    alias_native :physics,  :physics,  as: Physics
    alias_native :input,    :input,    as: Input
    #alias_native :time,     :time,     as: Time
    alias_native :rnd,      :rnd,      as: RandomDataGenerator
    alias_native :camera,   :camera,   as: Camera
    alias_native :scale, :scale, as: ScaleManager

    alias_native :make, :make, as: GameObjectCreator
    alias_native :load, :load, as: Loader
    alias_native :debug
    alias_native :width
    alias_native :paused
    alias_native :destroy

    def time
      Phaser::Time.new(`#@native.time`)
    end

    def paused=(bool)
      `#@native.paused = bool`
    end

    def renderer
      if `#@native.renderer instanceof PIXI.WebGLRenderer`
        PIXI::WebGLRenderer.new(`#@native.renderer`)
      else
        PIXI::CanvasRenderer.new(`#@native.renderer`)
      end
    end
  end
end
