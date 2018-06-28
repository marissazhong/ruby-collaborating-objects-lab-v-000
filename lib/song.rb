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

  def artist_name=(name)

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
end
