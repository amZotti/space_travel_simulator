require 'singleton'
require './game_information'
require './player'
require './rooms'
require './abstract_vessel_factory'
require './mobile_suit_factory'
require './ship_factory'

spacecruiser = AbstractVesselFactory.create_ship("spacecruiser")
taurus = AbstractVesselFactory.create_mobile_suit("taurus")
puts taurus
