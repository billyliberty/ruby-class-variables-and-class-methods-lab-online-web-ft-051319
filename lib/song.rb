class Song

  attr_accessor :name, :artist, :genre

  @@song_number = 0

  def initialize
    @@song_number += 1
  end

  def self.count
    @@song_number
  end
end
