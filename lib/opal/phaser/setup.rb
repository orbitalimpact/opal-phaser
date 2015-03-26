# We need the Opal Native support library here:
require 'native'

# These requires must be loaded in order of dependency:
require 'opal/phaser/core/files'
require 'opal/phaser/animation/files'
require 'opal/phaser/tween/files'
require 'opal/phaser/game_objects/files'
require 'opal/phaser/input/files'
require 'opal/phaser/loader/files'
require 'opal/phaser/physics/files'


# TODO: This is odd here as it doesn't fit the files.rb require pattern... how can we clean this up?
require 'opal/phaser/core/game'
