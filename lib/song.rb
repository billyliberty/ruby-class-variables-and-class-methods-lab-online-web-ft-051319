class Song

  attr_accessor :name, :artist, :genre

  @@song_number = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@song_number += 1
    @name = name
    @artist = artist
    @@genres << genres
    @@artists << artist
  end

  def self.count
    @@song_number
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self genre_type
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
end
