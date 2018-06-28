class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
  end
  def self.files
    @filesnames
  end
  def self.import
    puts @path
    puts "#{@path}/*"
    #puts Dir["#{@path}/*"]
  end
end

list = MP3Importer.new('./db/mp3s')
MP3Importer.import
