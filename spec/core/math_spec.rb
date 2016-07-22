require 'spec_helper'

describe "Phaser::Math" do
  let!(:game) { Phaser::Game.new }

  it "PI2" do
    expect(game.math.pi2).to eq(2 * Math::PI)
  end

  # This is between points, not vectors
  #       0
  #       |
  #       |
  #-0.5---*--- 0.5
  #       |
  #       |
  #       |
  #       1
  it "angle_between" do
    expect(game.math.angle_between(1,1,2,1)).to eq(0)
    expect(game.math.angle_between(1,1,1,2)).to eq(Math::PI/2)
    expect(game.math.angle_between(3,3,4,4)).to eq(Math::PI/4)
    expect(game.math.angle_between(2,1,1,1)).to eq(Math::PI)
    expect(game.math.angle_between(1,2,1,1)).to eq(-Math::PI/2)
    expect(game.math.angle_between(0,0,-7,-7)).to eq(-3*Math::PI/4)
  end

  it "angle_between_points" do
    expect(game.math.angle_between_points({x:1,y:2}, {x:3,y:4})).to eq(
           game.math.angle_between(1,2,3,4))
  end

  #      0.5
  #       |
  #       |
  #  1 ---*--- 0
  #       |
  #       |
  #       |
  #      -0.5
  it "angle_between_y" do
    expect(game.math.angle_between_y(1,1,1,2)).to eq(0)
    expect(game.math.angle_between_y(1,1,2,1)).to eq(Math::PI/2)
    expect(game.math.angle_between_y(3,3,4,4)).to eq(Math::PI/4)
    expect(game.math.angle_between_y(1,2,1,1)).to eq(Math::PI)
    expect(game.math.angle_between_y(2,1,1,1)).to eq(-Math::PI/2)
    expect(game.math.angle_between_y(0,0,-7,-7)).to eq(-3*Math::PI/4)
  end

  it "angle_between_points_y" do
    expect(game.math.angle_between_points_y({x:1,y:2}, {x:3,y:4})).to eq(
           game.math.angle_between_y(1,2,3,4))
  end

  it "average" do
    expect(game.math.average(1,3,11)).to eq(5)
  end

  it "bezier_interpolation" do
    expect(game.math.bezier_interpolation([10,20,40], 0)).to eq(10)
    expect(game.math.bezier_interpolation([10,20,40], 0.5)).to eq(22.5)
    expect(game.math.bezier_interpolation([10,20,40], 1)).to eq(40)
  end

  it "catmull_rom_interpolation" do
    expect(game.math.catmull_rom_interpolation([10,20,40], 0)).to eq(10)
    expect(game.math.catmull_rom_interpolation([10,20,40], 0.5)).to eq(20)
    expect(game.math.catmull_rom_interpolation([10,20,40], 1)).to eq(40)
  end

  it "ceil_to" do
    expect(game.math.ceil_to(3.14159)).to eq(4)
    expect(game.math.ceil_to(3.14159, -2)).to eq(3.15)
    expect(game.math.ceil_to(3.14159, -1, 16)).to eq(3.1875)
    expect(game.math.ceil_to(1234,3)).to eq(2000)
    expect(game.math.ceil_to(1234,2,16)).to eq(0x500)
  end

  it "chance_roll" do
    expect(game.math.chance_roll(100)).to eq(true)
    expect(game.math.chance_roll(0)).to eq(false)
  end

  it "clamp" do
    expect(game.math.clamp(1,2,3)).to eq(2)
    expect(game.math.clamp(2.5,2,3)).to eq(2.5)
    expect(game.math.clamp(5,2,3)).to eq(3)
  end

  it "clamp_bottom" do
    expect(game.math.clamp_bottom(1,2)).to eq(2)
    expect(game.math.clamp_bottom(2.5,2)).to eq(2.5)
  end

  it "deg_to_rad" do
    expect(game.math.deg_to_rad(90)).to eq(Math::PI/2)
  end

  it "difference" do
    expect(game.math.difference(3,5)).to eq(2)
    expect(game.math.difference(5,3)).to eq(2)
  end

  it "distance" do
    expect(game.math.distance(3,0,0,4)).to eq(5)
  end

  it "distance_pow" do
    # Note this is not correct implementation of p-norm
    # https://en.wikipedia.org/wiki/Norm_(mathematics)#p-norm
    expect(game.math.distance_pow(3,0,0,4)).to eq(5)
    expect(game.math.distance_pow(3,0,0,4,2)).to eq(5)
    expect(game.math.distance_pow(3,0,0,4,4)).to eq(Math.sqrt(3**4 + 4**4))
  end

  # That's in 2.4+
  # it "distance_sq" do
  #   expect(game.math.distance_sq(3,0,0,4)).to eq(25)
  # end

  it "factorial" do
    expect(game.math.factorial(5)).to eq(5*4*3*2*1)
  end

  it "floor_to" do
    expect(game.math.floor_to(3.14159)).to eq(3)
    expect(game.math.floor_to(3.14159, -2)).to eq(3.14)
    expect(game.math.floor_to(3.14159, -1, 16)).to eq(3.125)
    expect(game.math.floor_to(1234,3)).to eq(1000)
    expect(game.math.floor_to(1234,2,16)).to eq(1024)
  end

  it "fuzzy_ceil" do
    expect(game.math.fuzzy_ceil(6.990, 0.01)).to eq(7)
    expect(game.math.fuzzy_ceil(7.001, 0.01)).to eq(7)
    expect(game.math.fuzzy_ceil(7.201, 0.01)).to eq(8)
  end

  it "fuzzy_equal" do
    expect(game.math.fuzzy_equal(7.001, 6.998, 0.01)).to eq(true)
    expect(game.math.fuzzy_equal(7.001, 6.998, 0.001)).to eq(false)
  end

  it "fuzzy_floor" do
    expect(game.math.fuzzy_floor(8.001, 0.01)).to eq(8)
    expect(game.math.fuzzy_floor(6.999, 0.01)).to eq(7)
    expect(game.math.fuzzy_floor(4.001, 0.01)).to eq(4)
    expect(game.math.fuzzy_floor(2.201, 0.01)).to eq(2)
  end

  it "fuzzy_greater_than" do
    expect(game.math.fuzzy_greater_than(7.01, 6.58, 0.05)).to eq(true)
    expect(game.math.fuzzy_greater_than(7.01, 7.00, 0.05)).to eq(true)
    expect(game.math.fuzzy_greater_than(7.01, 7.02, 0.05)).to eq(true)
    expect(game.math.fuzzy_greater_than(7.01, 7.24, 0.05)).to eq(false)
  end

  it "fuzzy_less_than" do
    expect(game.math.fuzzy_less_than(6.58, 7.01, 0.05)).to eq(true)
    expect(game.math.fuzzy_less_than(7.00, 7.01, 0.05)).to eq(true)
    expect(game.math.fuzzy_less_than(7.02, 7.01, 0.05)).to eq(true)
    expect(game.math.fuzzy_less_than(7.24, 7.01, 0.05)).to eq(false)
  end

  it "even?" do
    expect(game.math.even?(4)).to eq(true)
    expect(game.math.even?(5)).to eq(false)
    # expect(game.math.even?(4.5)).to eq(false)
  end

  it "odd?" do
    expect(game.math.odd?(4)).to eq(false)
    expect(game.math.odd?(5)).to eq(true)
    # expect(game.math.odd?(4.5)).to eq(false)
  end

  it "linear" do
    expect(game.math.linear(10,20,0.3)).to eq(13)
    expect(game.math.linear(10,20,1.7)).to eq(27)
  end

  it "linear_interpolation" do
    expect(game.math.linear_interpolation([10,20,40], 0)).to eq(10)
    expect(game.math.linear_interpolation([10,20,40], 0.25)).to eq(15)
    expect(game.math.linear_interpolation([10,20,40], 0.5)).to eq(20)
    expect(game.math.linear_interpolation([10,20,40], 1)).to eq(40)
    # Interpolation continues past end points
    expect(game.math.linear_interpolation([10,20,40], -1)).to eq(-10)
    expect(game.math.linear_interpolation([10,20,40], 2)).to eq(80)
  end

  it "map_linear" do
    expect(game.math.map_linear(13,10,20,100,200)).to eq(130)
  end

  it "max" do
    expect(game.math.max(1,7,2)).to eq(7)
  end

  it "max_add" do
    expect(game.math.max_add(5,3,10)).to eq(8)
    expect(game.math.max_add(5,7,10)).to eq(10)
  end

  it "max_property" do
    expect(game.math.max_property(:x, [{x:2, y:7}, {x:3, y:4}])).to eq(3)
    expect(game.math.max_property(:y, [{x:2, y:7}, {x:3, y:4}])).to eq(7)
  end

  it "min" do
    expect(game.math.min(2,7,1)).to eq(1)
  end

  it "min_property" do
    expect(game.math.min_property(:x, [{x:2, y:7}, {x:3, y:4}])).to eq(2)
    expect(game.math.min_property(:y, [{x:2, y:7}, {x:3, y:4}])).to eq(4)
  end

  it "min_sub" do
    expect(game.math.min_sub(15,3,10)).to eq(12)
    expect(game.math.min_sub(15,7,10)).to eq(10)
  end

  it "normalize_angle" do
    expect(game.math.normalize_angle(1.40*Math::PI, true)).to eq(1.40*Math::PI)
    expect(game.math.normalize_angle(-0.20*Math::PI, true)).to eq(1.80*Math::PI)
    expect(game.math.normalize_angle(2.70*Math::PI, true)).to eq(0.70*Math::PI)
  end

  it "percent" do
    expect(game.math.percent(10,40)).to eq(0.25)
    expect(game.math.percent(-10,40)).to eq(0.00)
    expect(game.math.percent(60,40)).to eq(1.00)
    expect(game.math.percent(30,50,10)).to eq(0.4)
    expect(game.math.percent(5,50,10)).to eq(0)
    expect(game.math.percent(-20,40,10)).to eq(0.00)
    expect(game.math.percent(70,40,10)).to eq(1.00)
  end

  it "rad_to_deg" do
    expect(game.math.rad_to_deg(0)).to eq(0)
    expect(game.math.rad_to_deg(Math::PI/2)).to eq(90)
  end

  it "reverse_angle" do
    expect(game.math.reverse_angle(0)).to eq(Math::PI)
    expect(game.math.reverse_angle(1)).to eq(Math::PI+1)
  end

  it "round_away_from_zero" do
    expect(game.math.round_away_from_zero(3.14159)).to eq(4)
    expect(game.math.round_away_from_zero(-3.14159)).to eq(-4)
  end

  it "round_to" do
    expect(game.math.round_to(3.14159)).to eq(3)
    expect(game.math.round_to(3.14159,-2)).to eq(3.14)
    expect(game.math.round_to(3.14159,-1,16)).to eq(3.125)
    expect(game.math.round_to(972,3)).to eq(1000)
    expect(game.math.round_to(972,2,16)).to eq(0x400)
  end

  it "shear" do
    expect(game.math.shear(7.12).round(6)).to eq(0.12)
    # Why not 0.91?
    expect(game.math.shear(-2.09).round(6)).to eq(-0.09)
  end

  it "sign" do
    expect(game.math.sign(5)).to eq(1)
    expect(game.math.sign(0)).to eq(0)
    expect(game.math.sign(-5)).to eq(-1)
  end

  it "sin_cos_generator" do
    # This is not sensible API use example, it is unstable at such low sample rates,
    # but it fits test size better
    expect(game.math.sin_cos_generator(4, 10, 20, 3)).to eq({
      sin: [1.607365047719263, -15.70880205094555, 54.184840645432374, -176.73692136808745],
      cos: [-3.5619449019234466, -7.3492095710873295, 29.663783268872784, -98.00623971184518],
      length:4
    })
  end

  it "smootherstep" do
    expect(game.math.smootherstep(7,10,20)).to eq(0)
    expect(game.math.smootherstep(27,10,20)).to eq(1)
    expect(game.math.smootherstep(15,10,20)).to eq(0.5)
    expect(game.math.smootherstep(11,10,20).round(6)).to eq(0.00856)
    expect(game.math.smootherstep(12,10,20).round(6)).to eq(0.05792)
  end

  it "smoothstep" do
    expect(game.math.smoothstep(7,10,20)).to eq(0)
    expect(game.math.smoothstep(27,10,20)).to eq(1)
    expect(game.math.smoothstep(15,10,20)).to eq(0.5)
    expect(game.math.smoothstep(11,10,20).round(5)).to eq(0.028)
  end

  it "snap_to" do
    expect(game.math.snap_to(20, 10)).to eq(20)
    expect(game.math.snap_to(17, 10)).to eq(20)
    expect(game.math.snap_to(11, 10)).to eq(10)
    expect(game.math.snap_to(20, 10, 5)).to eq(25)
    expect(game.math.snap_to(17, 10, 5)).to eq(15)
    expect(game.math.snap_to(11, 10, 5)).to eq(15)
  end

  it "snap_to_ceil" do
    expect(game.math.snap_to_ceil(20, 10)).to eq(20)
    expect(game.math.snap_to_ceil(17, 10)).to eq(20)
    expect(game.math.snap_to_ceil(20, 10, 5)).to eq(25)
    expect(game.math.snap_to_ceil(17, 10, 5)).to eq(25)
  end

  it "snap_to_floor" do
    expect(game.math.snap_to_floor(20, 10)).to eq(20)
    expect(game.math.snap_to_floor(17, 10)).to eq(10)
    expect(game.math.snap_to_floor(20, 10, 5)).to eq(15)
    expect(game.math.snap_to_floor(17, 10, 5)).to eq(15)
  end

  it "within" do
    expect(game.math.within(7.01, 7.02, 0.05)).to eq(true)
    expect(game.math.within(7.01, 7.22, 0.05)).to eq(false)
  end

  it "wrap" do
    expect(game.math.wrap(72,10,20)).to eq(12)
    expect(game.math.wrap(-6,10,20)).to eq(14)
  end

  it "wrap_angle" do
    expect(game.math.wrap_angle(130)).to eq(130)
    expect(game.math.wrap_angle(290)).to eq(-70)
    expect(game.math.wrap_angle(290, false)).to eq(-70)
    expect(game.math.wrap_angle(1.40*Math::PI, true)).to eq(-0.60*Math::PI)
    expect(game.math.wrap_angle(0.20*Math::PI, true)).to eq(0.20*Math::PI)
  end

  it "wrap_value" do
    expect(game.math.wrap_value(1,4,10)).to eq(5)
    expect(game.math.wrap_value(8,4,10)).to eq(2)
  end
end
