class GameInformation
  include Singleton
  attr_reader :BRIDGE, :ENGINEROOM, :COCKPIT, :HALLWAY, :area_id

  def initialize
    @area_id = 1

    @BRIDGE =
      "This is a large circular room with glass windows in nearly every direction.
    There are chairs with computers all throughout the room"

      @ENGINEROOM =
      "There are a lot of metal pipes here.
    You can hear the sound of a loud generator in the background.
    The whole area is lit dimly with red light"

      @COCKPIT =
      "A small, tightly fit cockpit with screens in every direction."

    @HALLWAY =
      "A short hallway lined with metal pipes along the ceiling and walls."
  end
  def new_area_id
    @area_id += 1
    @area_id - 1
  end
end
