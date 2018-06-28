class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
    #puts @path
  end
  def import
    @filenames = Dir["#{@path}/*.mp3"].map! {|file| file[@path.length+1..-1]}
    @filenames.each {|file_name| Song.new_by_filename(file_name)}
    puts Artist.all
  end
  def files
    import
    @filenames
  end

end

# for testing

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

class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end
  def self.all
    @@all
  end
  def songs
    Song.all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def add_song(song)
    Song.all << song
  end

  def print_songs
    songs.detect{|song| puts song.name}
  end
end

dir = MP3Importer.new('./db/mp3s').import
puts dir
