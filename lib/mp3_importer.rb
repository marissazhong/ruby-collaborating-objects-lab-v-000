class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
    #puts @path
  end
  def files
    @filenames
  end
  def import
    @filenames = Dir["#{@path}/*.mp3"].map! {|file| file[@path.length+1..-1]}
    @filenames.each {|file_name| Song.new_by_filename(file_name)}
    #puts Song.all
  end
end

#dir = MP3Importer.new('./db/mp3s').import
#puts dir
