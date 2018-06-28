class Artist

  @@all = []

  def self.all
    @@all
  end

  def find_by_name(name)
    self.all.detect{|song| song.name == name}
  end

  def create_by_name(name)
    new_song = Song.new


  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(song_name)
  end
end
