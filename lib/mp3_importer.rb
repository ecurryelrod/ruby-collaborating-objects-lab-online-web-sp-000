require 'pry'

class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = Dir.children(@path)
  end 
  
  def import
    binding.pry
    Song.new_by_filename(@files)
  end 
end 