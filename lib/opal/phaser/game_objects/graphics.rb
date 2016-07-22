module Phaser
  class Graphics
    include Native
    # Properties
    native_accessor :alive
    native_accessor :alpha
    native_accessor :angle
    native_accessor :animations
    native_accessor :auto_cull, :autoCull
    native_accessor :blend_mode, :blendMode
    native_accessor :body
    native_reader :bottom
    native_accessor :bounds_padding, :boundsPadding
    native_accessor :camera_offset, :cameraOffset
    native_accessor :check_world_bounds, :checkWorldBounds
    native_reader :children
    native_accessor :components
    native_accessor :debug
    native_reader :destroy_phase, :destroyPhase
    native_accessor :events
    native_accessor :exists
    native_accessor :fill_alpha, :fillAlpha
    native_accessor :filter_area, :filterArea
    native_accessor :filters
    native_accessor :fixed_to_camera, :fixedToCamera
    native_reader :fresh
    native_accessor :game
    native_accessor :height
    native_accessor :hit_area, :hitArea
    native_reader :in_camera, :inCamera
    native_accessor :input
    native_accessor :input_enabled, :inputEnabled
    native_reader :in_world, :inWorld
    native_accessor :is_mask, :isMask
    native_accessor :key
    native_reader :left
    native_accessor :lifespan
    native_accessor :line_color, :lineColor
    native_accessor :line_width, :lineWidth
    native_accessor :mask
    native_accessor :name
    native_reader :offset_x, :offsetX
    native_reader :offset_y, :offsetY
    native_accessor :out_of_bounds_kill, :outOfBoundsKill
    native_reader :parent
    native_accessor :pending_destroy, :pendingDestroy
    native_reader :physics_type, :physicsType
    native_accessor :pivot
    native_accessor :position
    native_reader :previous_position, :previousPosition
    native_reader :previous_rotation, :previousRotation
    native_accessor :renderable
    native_reader :render_order_id, :renderOrderID
    native_reader :right
    native_accessor :rotation
    native_accessor :scale
    native_reader :stage
    native_accessor :tint
    native_reader :top
    native_accessor :transform_callback, :transformCallback
    native_accessor :transform_callback_context, :transformCallbackContext
    native_accessor :type
    native_accessor :visible
    native_accessor :width
    native_accessor :world
    native_reader :world_alpha, :worldAlpha
    native_reader :world_position, :worldPosition
    native_reader :world_rotation, :worldRotation
    native_reader :world_scale, :worldScale
    native_reader :world_visible, :worldVisible
    native_accessor :x
    native_accessor :y
    native_accessor :z

    # Methods
    alias_native :add_child, :addChild
    alias_native :add_child_at, :addChildAt
    alias_native :arc
    alias_native :begin_fill, :beginFill
    alias_native :bezier_curve_to, :bezierCurveTo
    alias_native :clear
    alias_native :destroy
    alias_native :destory_cached_sprite, :destroyCachedSprite
    alias_native :draw_circle, :drawCircle
    alias_native :draw_ellipse, :drawEllipse
    alias_native :draw_polygon, :drawPolygon
    alias_native :draw_rect, :drawRect
    alias_native :draw_rounded_rect, :drawRoundedRect
    alias_native :draw_shape, :drawShape
    alias_native :end_fill, :endFill
    alias_native :generate_texture, :generateTexture
    alias_native :get_bounds, :getBounds
    alias_native :get_child_at, :getChildAt
    alias_native :git_child_index, :getChildIndex
    alias_native :git_local_bounds, :getLocalBounds
    alias_native :kill
    alias_native :line_style, :lineStyle
    alias_native :line_to, :lineTo
    alias_native :move_to, :moveTo
    alias_native :post_update, :postUpdate
    alias_native :pre_update, :preUpdate
    alias_native :quadratic_curve_to, :quadraticCurveTo
    alias_native :remove_child, :removeChild
    alias_native :remove_child_at, :removeChildAt
    alias_native :remove_children, :removeChildren
    alias_native :remove_stage_reference, :removeStageReference
    alias_native :reset
    alias_native :revive
    alias_native :set_child_index, :setChildIndex
    alias_native :set_stage_reference, :setStageReference
    alias_native :swap_children, :swapChildren
    alias_native :to_global, :toGlobal
    alias_native :to_local, :toLocal
    alias_native :update
    alias_native :update_cache, :updateCache
    alias_native :update_local_bounds, :updateLocalBounds
  end
end
