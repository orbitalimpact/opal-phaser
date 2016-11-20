module Phaser
  class StateManager
    include Native

    alias_native :add
    alias_native :start
    alias_native :restart
  end
end
