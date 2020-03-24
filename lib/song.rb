class Song
  
  @@song_instances = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artists, genre)
    @@song_instances +=1
    @@artists << :artist
    @@genres << :genre
    if  @@genre_count[:genre].length  >= 0
      @@genre_count[:genre] = @@genre_count[:genre] + 1
    else
      @@genre_count[:genre] = 1
    end
    if @@artist_count[:name] >= 0
      @@artist_count[:name] = @@artist_count[:name] + 1
    else
      @@artist_count[:name] = 1
    end
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
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
  
end