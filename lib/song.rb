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
    song.artist = artist
    artist.add_song(song)
    song
  end 
  
  def artist_name=(name)
    artist.name = Artist.find_or_create_by_name(name)
  end 
end 