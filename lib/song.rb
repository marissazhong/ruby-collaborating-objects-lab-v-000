class Song
  attr_accessor :title, :artist, :genre
  def self.new_by_filename(file_name)
    attributes = file_name.split(" - ")
    
  end
end
