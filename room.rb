class Room

  attr_reader :name
  def initialize(name)
    @name = name
    @guests = []
    @songs = []

  end

  def guest_count()
    return @guests.length()
  end

  def check_in(guest)
    @guests << guest

  end

  def song_count()
    return @songs.length()

  end

  def add_songs(song)
    @songs << song
  end

  def check_out(guest)
    @guests.delete(guest)


  end

end