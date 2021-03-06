class Room
  attr_reader :belongs_to, :obvious_exits, :area_id
  attr_accessor :obvious_exits
  def initialize(ship, description)
    @belongs_to = ship
    @area_id = ship.area_id
    @obvious_exits = {}
    @description = description
  end
end

class Cockpit < Room
  def initialize(ship)
    super(ship, GameInformation.instance.COCKPIT)
  end
end

class Hallway < Room
  def initialize(ship)
    super(ship, GameInformation.instance.HALLWAY)
  end
end

class Bridge < Room
  def initialize(ship)
    super(ship, GameInformation.instance.BRIDGE)
  end
end

class EngineRoom < Room
  def initialize(ship)
    super(ship, GameInformation.instance.ENGINEROOM)
  end
end
