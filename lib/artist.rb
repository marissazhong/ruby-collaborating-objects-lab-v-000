class Artist

  @@songs = []

  def self.all
    @@songs
  end

  def find_by_name(name)
    self.all.detect{|song| song.name == name}
  end

  def create_by_name(name)
    new_song = self.new
    new_song.name = name
    new_song
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
end
