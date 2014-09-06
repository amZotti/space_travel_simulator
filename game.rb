class Game
  include Singleton

  def initialize
    @area_id = 1
  end

  attr_accessor :area_id

  def new_area_id
    @area_id += 1
    @area_id - 1
  end
end
