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

dir = MP3Importer.new('./db/mp3s').import
#puts dir
