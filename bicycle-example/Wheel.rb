require_relative './Gear.rb'

class Wheel
  attr_reader :rim, :tire

  def initialize(arguments)
    @rim = arguments[:rim]
    @tire = arguments[:tire]
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

wheel = Wheel.new({ rim: 26, tire: 1.5 })
puts wheel.circumference

puts Gear.new({ chainring: 52, cog: 11, wheel: wheel }).gear_inches

puts Gear.new({ chainring: 52, cog: 11}).ratio
