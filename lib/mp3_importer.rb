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
    # binding.pry
    song = @files.each {|file| Song.new_by_filename(file)}
   # Artist.all << Song.artist
  end 
end 