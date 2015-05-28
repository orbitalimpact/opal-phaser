module Phaser
  class StateManager
    include Native

    alias_native :add
    alias_native :start
  end
end
