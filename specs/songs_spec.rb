require "minitest/autorun"
require "minitest/rg"
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_1 =  Song.new("Poison", "Every rose has its thorn")
    # @song_2 = Song.new("Metallica", "Better than you")
    # @song_3 = Song.new("Metallica", "Enter Sandman")
    # @song_4 = Song.new("Iron Maiden" "Run to the hills")
    # @song_5 = Song.new("Guns N Roses", "Sweet child O mine")

    # @songs = [@song_1, @song_2, @song_3, @song_4, @song_5]
  end

  def test_song_artist
    assert_equal("Poison", @song_1.artist)
  end

  def test_song_title
    assert_equal("Every rose has its thorn", @song_1.title)


  end
end

