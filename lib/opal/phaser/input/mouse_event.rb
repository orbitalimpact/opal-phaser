# This is basic browser class, not part of phaser
# https://developer.mozilla.org/en/docs/Web/API/MouseEvent
class MouseEvent
  include Native
  alias_native :client_x, :clientX
  alias_native :client_y, :clientY
  alias_native :movement_x, :movementX
  alias_native :movement_y, :movementY
  alias_native :offset_x, :offsetX
  alias_native :offset_y, :offsetY
  alias_native :page_x, :pageX
  alias_native :page_y, :pageY
  alias_native :x
  alias_native :y

  alias_native :region
  alias_native :target
  alias_native :current_target, :currentTarget
  alias_native :related_target, :relatedTarget
  alias_native :screen_x, :screenX
  alias_native :screen_y, :screenY

  alias_native :alt_key, :altKey
  alias_native :shift_key, :shiftKey
  alias_native :meta_key, :metaKey
  alias_native :which
  alias_native :button
  alias_native :buttons

  alias_native :timestamp, :timeStamp
  alias_native :webkit_force, :webkitForce

  alias_native :prevent_default, :preventDefault
end
