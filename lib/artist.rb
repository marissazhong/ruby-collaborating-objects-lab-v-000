class Artist

  @@all = []

  def self.all
    @@all
  end

  def find_by_name(name)
    self.all.detect{|song| song.name == name}

  def self.find_or_create_by_name(name)
    @@all.include?()

end
