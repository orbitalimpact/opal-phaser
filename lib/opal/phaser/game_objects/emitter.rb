module Phaser
  class Emitter
    include Native
    # Properties
    native_accessor :alive
    native_accessor :alpha
    native_accessor :alpha_data, :alphaData
    native_accessor :angle
    native_accessor :angular_drag, :angularDrag
    native_accessor :area
    native_accessor :auto_alpha, :autoAlpha
    native_accessor :auto_scale, :autoScale
    native_accessor :blend_mode, :blendMode
    native_reader :bottom
    native_accessor :bounce
    native_accessor :cache_as_bitmap, :cacheAsBitmap
    native_accessor :camera_offset, :cameraOffset
    native_reader :children
    native_accessor :class_type, :classType
    native_reader :cursor
    native_accessor :cursor_index, :cursorIndex
    native_accessor :emit_x, :emitX
    native_accessor :emit_y, :emitY
    native_accessor :enable_body, :enableBody
    native_accessor :enable_body_debug, :enableBodyDebug
    native_accessor :exists
    native_accessor :filter_area, :filterArea
    native_accessor :filters
    native_accessor :fixed_to_camera, :fixedToCamera
    native_accessor :frequency
    native_accessor :gravity
    native_accessor :hash
    native_accessor :height
    native_accessor :hit_area, :hitArea
    native_accessor :ignore_destroy, :ignoreDestroy
    native_reader :left
    native_reader :length
    native_accessor :lifespan
    native_accessor :mask
    native_accessor :max_particle_alpha, :maxParticleAlpha
    native_accessor :max_particle_scale, :maxParticleScale
    native_accessor :max_particle_speed, :maxParticleSpeed
    native_accessor :max_particles, :maxParticles
    native_accessor :max_rotation, :maxRotation
    native_accessor :min_particle_alpha, :minParticleAlpha
    native_accessor :min_particle_scale, :minParticleScale
    native_accessor :min_particle_speed, :minParticleSpeed
    native_accessor :min_rotation, :minRotation
    native_accessor :name
    native_accessor :on
    native_accessor :on_destroy, :onDestroy
    native_reader :parent
    native_accessor :particle_anchor, :particleAnchor
    native_accessor :particle_bring_to_top, :particleBringToTop
    native_accessor :particle_class, :particleClass
    native_accessor :particle_drag, :particleDrag
    native_accessor :particle_send_to_back, :particleSendToBack
    native_accessor :pending_destroy, :pendingDestroy
    native_accessor :physics_body_type, :physicsBodyType
    native_accessor :physics_sort_direction, :physicsSortDirection
    native_reader :physics_type, :physicsType
    native_accessor :pivot
    native_accessor :position
    native_accessor :renderable
    native_reader :right
    native_accessor :rotation
    native_accessor :scale
    native_accessor :scale_data, :scaleData
    native_reader :stage
    native_reader :top
    native_reader :total
    native_accessor :transform_callback, :transformCallback
    native_accessor :transform_callback_context, :transformCallbackContext
    native_accessor :visible
    native_accessor :width
    native_reader :world_alpha, :worldAlpha
    native_reader :world_position, :worldPosition
    native_reader :world_rotation, :worldRotation
    native_reader :world_scale, :worldScale
    native_reader :world_visible, :worldVisible
    native_accessor :x
    native_accessor :y
    native_accessor :z

    # Methods
    alias_native :add
    alias_native :add_all, :addAll
    alias_native :add_at, :addAt
    alias_native :add_child, :addChild
    alias_native :add_child_at, :addChildAt
    alias_native :add_multiple, :addMultiple
    alias_native :add_to_hash, :addToHash
    alias_native :at
    alias_native :bring_to_top, :bringToTop
    alias_native :call_all, :callAll
    alias_native :call_all_exists, :callAllExists
    alias_native :check_all, :checkAll
    alias_native :check_property, :checkProperty
    alias_native :count_dead, :countDead
    alias_native :count_living, :countLiving
    alias_native :create
    alias_native :create_multiple, :createMultiple
    alias_native :custom_sort, :customSort
    alias_native :destroy
    alias_native :divide_all, :divideAll
    alias_native :emit_particle, :emitParticle
    alias_native :explode
    alias_native :filter
    alias_native :flow
    alias_native :for_each, :forEach
    alias_native :for_each_alive, :forEachAlive
    alias_native :for_each_dead, :forEachDead
    alias_native :for_each_exists, :forEachExists
    alias_native :generate_texture, :generateTexture
    alias_native :get_at, :getAt
    alias_native :get_bottom, :getBottom
    alias_native :get_bounds, :getBounds
    alias_native :get_child_at, :getChildAt
    alias_native :get_child_index, :getChildIndex
    alias_native :get_first_alive, :getFirstAlive
    alias_native :get_first_dead, :getFirstDead
    alias_native :get_first_exists, :getFirstExists
    alias_native :get_index, :getIndex
    alias_native :get_local_bounds, :getLocalBounds
    alias_native :get_random, :getRandom
    alias_native :get_top, :getTop
    alias_native :has_property, :hasProperty
    alias_native :iterate
    alias_native :kill
    alias_native :make_particles, :makeParticles
    alias_native :move_all, :moveAll
    alias_native :move_down, :moveDown
    alias_native :move_up, :moveUp
    alias_native :multiply_all, :multiplyAll
    alias_native :next
    alias_native :previous
    alias_native :remove
    alias_native :remove_all, :removeAll
    alias_native :remove_between, :removeBetween
    alias_native :remove_child, :removeChild
    alias_native :remove_child_at, :removeChildAt
    alias_native :remove_children, :removeChildren
    alias_native :remove_from_hash, :removeFromHash
    alias_native :remove_stage_reference, :removeStageReference
    alias_native :replace
    alias_native :reset_cursor, :resetCursor
    alias_native :reverse
    alias_native :revive
    alias_native :send_to_back, :sendToBack
    alias_native :set
    alias_native :set_all, :setAll
    alias_native :set_all_children, :setAllChildren
    alias_native :set_alpha, :setAlpha
    alias_native :set_child_index, :setChildIndex
    alias_native :set_property, :setProperty
    alias_native :set_rotation, :setRotation
    alias_native :set_scale, :setScale
    alias_native :set_size, :setSize
    alias_native :set_stage_reference, :setStageReference
    alias_native :set_x_speed, :setXSpeed
    alias_native :set_y_speed, :setYSpeed
    alias_native :sort
    alias_native :start
    alias_native :sub_all, :subAll
    alias_native :swap
    alias_native :swap_children, :swapChildren
    alias_native :to_global, :toGlobal
    alias_native :to_local, :toLocal
    alias_native :update
    alias_native :update_cache, :updateCache
    alias_native :xy
  end
end
