module Phaser
    class World
        def initialize
            alias_native :x_center, :centerX
            alias_native :y_center, :centerY
        end
    end
end