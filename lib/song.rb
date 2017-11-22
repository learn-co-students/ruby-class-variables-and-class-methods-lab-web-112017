class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.keys
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    self.genres.each_with_object({}) do |genre, genre_count_hash|
      genre_count_hash[genre]=@@genres.count(genre)
    end
  end

  def self.artist_count
    self.artists.each_with_object({}) do |artist, artist_count_hash|
      artist_count_hash[artist]=@@artists.count(artist)
    end
  end

end
