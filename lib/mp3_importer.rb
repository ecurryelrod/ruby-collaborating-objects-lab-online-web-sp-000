class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = Dir.children(@path)
  end 
  
  def import
    Song.new_by_filename(path)
  end 
end 