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
    songs
  end
end
