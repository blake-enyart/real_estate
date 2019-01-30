require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def test_room_exist
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_area_calculates_correctly
    room = Room.new(:bedroom, 10, 13)

    assert_equal 130, room.area
  end

  def test_attr_assign_correctly
    room = Room.new(:bedroom, 10, 13)

    assert_equal 10, room.length
    assert_equal 13, room.width
    assert_equal :bedroom, room.category
  end
end


##PRY BLOCK 1

# require './lib/room'
# #=> true
#
# room = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fa53b9ca0a8...>
#
# room.category
# #=> :bedroom
#
# room.area
# #=> 130
