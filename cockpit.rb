class Cockpit < RoomBuilder
  attr_reader :belongs_to, :obvious_exits, :area_id, :coordinates
  def initialize(mobile_suit)
    @belongs_to = mobile_suit
    @obvious_exits = ["None"]
    @area_id = mobile_suit.area_id
    @coordinates = [0, 0]
  end
end
