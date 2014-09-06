class Player
  include Singleton

  def initialize
    @area_id = 0
    @room_coordinates = [0, 0]
  end
  attr_accessor :area_id, :room_coordinates
end
