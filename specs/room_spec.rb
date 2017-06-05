require "minitest/autorun"
require "minitest/rg"
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new("Vigo")
    @guest_1 =  Guest.new("Sam")
    @guest_2 = Guest.new("Rich")
    @guest_3 = Guest.new ("Caroline")
    @song_1 =  Song.new("Poison", "Every rose has its thorn")
    @song_2 = Song.new("Metallica", "Better than you")
    @song_3 = Song.new("Metallica", "Enter Sandman")
    @song_4 = Song.new("Queen", "Bohemian Rhapsody")
  end

  def test_room_has_name
    assert_equal("Vigo", @room_1.name())

  end
  def test_add_guest()
    @room_1.check_in(@guest_1)
    assert_equal(1, @room_1.guest_count())

  end

  def test_add_songs()
    @room_1.add_songs(@song_1)
    assert_equal(1, @room_1.song_count())

  end

def test_check_out_room()
  @room_1.check_in(@guest_1)
  @room_1.check_out(@guest_1)
  assert_equal(0, @room_1.guest_count())

end



end