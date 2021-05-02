require 'pry'

class Song 
  attr_accessor :name, :artist 
  @@all = [] 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    song = self.new(file_array[1])
    artist = Artist.find_or_create_by_name(file_array[0])
    binding.pry
    artist.add_song(song)
    song.artist = artist
    song
  end 
  
  def artist_name=(name)
    self.artist.name
    # if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else 
    #   self.artist.name = name
    # end 
  end 
end 