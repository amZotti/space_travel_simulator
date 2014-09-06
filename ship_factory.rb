class ShipFactory
  def self.create(max_speed, radar_range, name)
    CustomShip.new(max_speed, radar_range, name)
  end
end

class CustomShip
  def initialize(max_speed, radar_range, name)
    @max_speed = max_speed
    @radar_range = radar_range
    @name = name
  end
  attr_reader :max_speed, :radar_range, :name
end
