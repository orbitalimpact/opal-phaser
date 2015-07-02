module Phaser
  class RandomDataGenerator
    include Native

    alias_native :integer_in_range, :integerInRange
    alias_native :between
  end
end