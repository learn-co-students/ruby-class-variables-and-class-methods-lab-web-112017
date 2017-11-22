require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    self.genres.each_with_object({}) do |unique_genre, genre_count_hash|
      genre_count_hash[unique_genre] = @@genres.count(unique_genre)
    end
  end

  def self.artist_count
    self.artists.each_with_object({}) do |unique_artist, artist_count_hash|
      artist_count_hash[unique_artist] = @@artists.count(unique_artist)
    end
  end

end

# Song.new("99 problems", "Jay-Z", "hip-hop")
# Song.new("C.R.E.A.M", "Wu-Tang", "hip-hop")
# Song.new("Kiss", "Prince", "Soul")
# Song.genre_count
#
#
# binding.pry
