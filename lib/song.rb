class Song
  attr_accessor :name, :artist_name, :genre
  @@all = []
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    attributes = file_name.split(" - ")
    new_song = Song.new
    new_song.artist_name = attributes[0]
    new_song.title = attributes[1]
    new_song.genre = attributes[2]
    new_song
  end

  def artist_name=(name)
    new_song = Artist.find_or_create_by_name(name)
    Artist.add_song(new_song)
  end

end
