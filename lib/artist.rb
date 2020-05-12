require "pry" 
class Artist 

attr_accessor :name, :song

@@all = []

def initialize(name)
  @name = name 
  @@all << self 
  
end
  
def self.all 
  @@all
end


def genres 
    songs.map {|song| song.genre }
end


def new_song(name, genre)
 Song.new(name, self, genre)
 
end



  
def songs 
  Song.all.select { |song| song.artist == self
  }
end  
#binding.pry

  
end