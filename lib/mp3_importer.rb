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
    Dir["#{@path}/*"]
  end
end

list = MP3Importer.new('./db/mp3s').import
