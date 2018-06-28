class Song
  attr_accessor :title, :artist, :genre
  def self.new_by_filename(file_name)
    attributes = file_name.split(" - ")
    new_song = Song.new
    new_song.artist = attributes[0]
    new_song.title = attributes[1]
    new_song.genre = attributes[2]
  end
end
