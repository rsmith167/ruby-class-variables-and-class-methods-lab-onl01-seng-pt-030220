class Song
  
  @@song_instances = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize
    @@song_instances +=1
  end
  
  def self.count
    @@song_instances
  end
  def self.artists
    @@artists
  end
  def self.genres
    @@genres
  end
  def self.genre_count
  end
  
end