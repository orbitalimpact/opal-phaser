class Pointer
  include Native

  alias_native :down?,  :isDown
  alias_native :up?,    :isUp

  alias_native :target_object, :targetObject

  alias_native :position, :position, as: Point
end
