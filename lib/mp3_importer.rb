class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
    #puts @path
  end
  def self.files
    @filesnames
  end
  def import
    @filenames = Dir["#{@path}/*.mp3"].map! {|file| file[@path.length+1..-5]}
  end
end

#dir = MP3Importer.new('./db/mp3s').import
