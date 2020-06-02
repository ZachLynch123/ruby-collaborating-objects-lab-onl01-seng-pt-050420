class Artist 
  
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(song)
    
  end
  
  def print_songs
    Song.all.select{|song| song.artist == self}

  end
  
end