require "minitest/autorun"
require "minitest/rg"
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_1 =  Song.new("Poison", "Every rose has its thorn")
    
  end

  def test_song_artist
    assert_equal("Poison", @song_1.artist)
  end

  def test_song_title
    assert_equal("Every rose has its thorn", @song_1.title)


  end
end

