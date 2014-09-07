require 'singleton'
require './game_information'
require './player'
require './rooms'
require './abstract_vessel_factory'
require './mobile_suit_factory'
require './ship_factory'

spacecruiser = AbstractVesselFactory.create_ship("spacecruiser")
#def parseLocation
#  spacecruiser.contains[0].obvious_exits.each { | direction, room | puts direction }
#end
