class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
    @filenames = []
    puts @path
  end
  def self.files
    @filesnames
  end
  def self.import
    puts self
    puts @path
    puts "#{@path}/*"
    #puts Dir["#{@path}/*"]
  end
end

dir = MP3Importer.new('./db/mp3s')
MP3Importer.import(dir)
