class Song
  attr_accessor :title, :artist_name, :genre

  def self.new_by_filename(file_name)
    attributes = file_name.split(" - ")
    new_song = Song.new
    new_song.artist_name = attributes[0]
    new_song.title = attributes[1]
    new_song.genre = attributes[2]
    new_song
  end

  def artist_name=(artist_name)

end
