module Phaser
  class Math
    include Native
    alias_native :pi2, :PI2
    alias_native :angle_between, :angleBetween
    alias_native :angle_between_points, :angleBetweenPoints
    alias_native :angle_between_points_y, :angleBetweenPointsY
    alias_native :angle_between_y, :angleBetweenY
    alias_native :average, :average
    # bernstein method is documented as internal
    alias_native :bezier_interpolation, :bezierInterpolation
    # catmullRom method is documented as internal
    alias_native :catmull_rom_interpolation, :catmullRomInterpolation
    alias_native :ceil_to, :ceilTo
    alias_native :chance_roll, :chanceRoll
    alias_native :clamp, :clamp
    alias_native :clamp_bottom, :clampBottom
    alias_native :deg_to_rad, :degToRad
    alias_native :difference, :difference
    alias_native :distance, :distance
    alias_native :distance_pow, :distancePow
    alias_native :distance_sq, :distanceSq
    alias_native :factorial, :factorial
    alias_native :floor_to, :floorTo
    alias_native :fuzzy_ceil, :fuzzyCeil
    alias_native :fuzzy_equal, :fuzzyEqual
    alias_native :fuzzy_floor, :fuzzyFloor
    alias_native :fuzzy_greater_than, :fuzzyGreaterThan
    alias_native :fuzzy_less_than, :fuzzyLessThan

    # isEven, isOdd reimplemented as phaser version return 0 for false
    def even?(n)
      n.even?
    end

    def odd?(n)
      n.odd?
    end

    alias_native :linear, :linear
    alias_native :linear_interpolation, :linearInterpolation
    alias_native :map_linear, :mapLinear
    alias_native :max, :max
    alias_native :max_add, :maxAdd
    alias_native :max_property, :maxProperty
    alias_native :min, :min
    alias_native :min_property, :minProperty
    alias_native :min_sub, :minSub
    alias_native :normalize_angle, :normalizeAngle
    alias_native :percent, :percent
    alias_native :rad_to_deg, :radToDeg
    alias_native :reverse_angle, :reverseAngle
    alias_native :round_away_from_zero, :roundAwayFromZero
    alias_native :round_to, :roundTo
    alias_native :shear, :shear
    alias_native :sign, :sign

    def sin_cos_generator(length, sinAmplitude, cosAmplitude, frequency)
      Hash.new(`#@native.sinCosGenerator(length, sinAmplitude, cosAmplitude, frequency)`)
    end

    alias_native :smootherstep, :smootherstep
    alias_native :smoothstep, :smoothstep
    alias_native :snap_to, :snapTo
    alias_native :snap_to_ceil, :snapToCeil
    alias_native :snap_to_floor, :snapToFloor
    alias_native :within, :within
    alias_native :wrap, :wrap
    alias_native :wrap_angle, :wrapAngle
    alias_native :wrap_value, :wrapValue
  end
end
