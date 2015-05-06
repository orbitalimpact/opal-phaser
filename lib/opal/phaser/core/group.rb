module Phaser
  class Group
    include Native

    alias_native :cursor
    alias_native :physics_body_type, :physicsBodyType
    alias_native :enable_body_debug, :enableBodyDebug
    alias_native :add_child, :addChild
    alias_native :set_all,   :setAll
    alias_native :call_all,  :callAll
    alias_native :children
    alias_native :create
    alias_native :destroy
    alias_native :remove
    alias_native :total

    alias_native :enable_body?, :enableBody

    def enable_body=(bool)
      `#@native.enableBody = bool`
    end
  end
end