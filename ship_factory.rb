class ShipFactory
  def self.create(max_speed, radar_range, name, game)
    CustomShip.new(max_speed, radar_range, name, game)
  end
end

class CustomShip
  def initialize(max_speed, radar_range, name, game)
    @max_speed = max_speed
    @radar_range = radar_range
    @name = name
    @area_id = game.new_area_id
  end
  attr_reader :max_speed, :radar_range, :name, :area_id
end
