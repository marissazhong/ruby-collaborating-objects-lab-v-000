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

dir = MP3Importer.new('./db/mp3s').import
#puts dir
