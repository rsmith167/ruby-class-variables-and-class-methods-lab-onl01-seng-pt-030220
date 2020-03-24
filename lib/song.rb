class Song
  
  @@count= 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count +=1
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
      @@genres << genre
  
    if  @@genre_count[@genre] != nil
      @@genre_count[@genre] = @@genre_count[@genre] + 1
    else
      @@genre_count[@genre] = 1
    end
    if @@artist_count[@name] != nil
      @@artist_count[@name] = @@artist_count[@name] + 1
    else
      @@artist_count[@name] = 1
    end
  end
  
  def self.count
    @@count
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
    new_artists
    @@artist_count.each do |artist|
      if !new_artists.include(artist)
        new_artists << artist
      end
      new_artists
  end
  
end