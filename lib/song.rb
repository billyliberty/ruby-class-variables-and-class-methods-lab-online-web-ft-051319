class Song

  attr_accessor :name, :artist, :genre

  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@song_count += 1
    @name = name
    @artist = artist
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_type
    genre_type = {}
    @@genres.each do |genre|
    if genre_type[genre]
      genre_type[genre] += 1
    else
      genre_type[genre] = 1
    end
  end
  genre_type
end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
    end
  end
  artist_count
end

end
