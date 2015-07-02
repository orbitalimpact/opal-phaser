module Phaser
  class Rectangle < `Phaser.Rectangle`
    include Native

    def self.new(x, y, w, h)
      `new Phaser.Rectangle(x, y, w, h)`
    end
  end
end
