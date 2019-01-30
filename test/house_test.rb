require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end

  def test_room_exist

    assert_instance_of House, @house
  end

  def test_add_room_places_room_in_rooms_attr
    @house.add_room(@room_1)
    @house.add_room(@room_2)

    assert_equal [@room_1, @room_2], @house.rooms
  end
end


# require './lib/room'
# #=> true
#
# require './lib/house'
# #=> true
#
# house = House.new("$400000", "123 sugar lane")
# #=> #<House:0x00007fccd30375f8...>
#
# house.price
# #=> 400000
#
# house.address
# #=> "123 sugar lane"
#
# house.rooms
# #=> []
#
# room_1 = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fccd29b5720...>
#
# room_2 = Room.new(:bedroom, 11, 15)
# #=> #<Room:0x00007fccd2985f48...>
#
# house.add_room(room_1)
# #=> [#<Room:0x00007fccd29b5720...]
#
# house.add_room(room_2)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# house.rooms
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
