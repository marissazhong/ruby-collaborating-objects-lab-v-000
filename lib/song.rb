class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    attributes = file_name[0..-5].split(" - ")
    puts attributes
    new_song = Song.new(attributes[1])
    new_song.artist = attributes[0]
    new_song.genre = attributes[2]
    self.all << new_song
    new_song
  end

  def artist_name=(name)
    new_song = Artist.find_or_create_by_name(name)
    Artist.add_song(new_song)
  end
end

puts Song.new_by_filename("Real Estate - Green Aisles - country.mp3")
