class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(arguments)
    @chainring = arguments[:chainring]
    @cog = arguments[:cog]
    @wheel = arguments[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end
end
