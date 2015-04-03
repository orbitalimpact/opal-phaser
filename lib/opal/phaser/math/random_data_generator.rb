module Phaser
  class RandomDataGenerator
    include Native
    
    alias_native :integer_in_range, :integerInRange
  end
end