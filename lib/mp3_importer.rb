class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
    #puts @path
  end
  def files
    @filenames = Dir["#{@path}/*.mp3"].map! {|file| file[@path.length+1..-1]}
  end
  def import
    @filenames.each {|file_name| Song.new_by_filename(file_name)}
  end
end

dir = MP3Importer.new('./db/mp3s').files
