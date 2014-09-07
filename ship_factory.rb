class ShipFactory
  attr_reader :max_speed, :radar_range, :name, :contains
  def initialize(max_speed, radar_range, name, contains)
    @max_speed = max_speed
    @radar_range = radar_range
    @name = name
    @contains = contains
  end

  def self.create(name)
    case name
    when "spacepod"
      SpacePod.new
    when "spacecruiser"
      SpaceCruiser.new
    end
  end
end

class SpacePod < ShipFactory
  def initialize
    super(1000, 0, "SpacePod",
          [Cockpit.new(self)])
  end
end

class SpaceCruiser < ShipFactory
  def initialize
    super(400, 600, "SpaceCruiser", [])
    self.create_rooms
    self.connect_rooms
  end

  def create_rooms
    @bridge = Bridge.new(self)
    @engine_room = EngineRoom.new(self)
    @hallway = Hallway.new(self)
  end

  def connect_rooms
    @bridge.obvious_exits =
      { "south" => @hallway }
    @hallway.obvious_exits =
      { "north" => @bridge,
        "south" => @engine_room }
    @engine_room.obvious_exits =
      { "north" => @hallway }
    @contains =
      [@bridge, @hallway, @engine_room]
  end
end
