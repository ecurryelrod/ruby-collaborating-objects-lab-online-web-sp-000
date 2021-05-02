class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = Dir.children(@path)
  end 
  
  def import
    filenames.each {|filename| Song.new_by_file_name(filename)}
  end 
end 